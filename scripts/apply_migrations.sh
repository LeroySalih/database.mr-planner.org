#!/usr/bin/env bash
set -euo pipefail

# ===== Load .env =====
ENV_FILE="${ENV_FILE:-.env}"
if [[ -f "$ENV_FILE" ]]; then
  # shellcheck disable=SC2046
  export $(grep -v '^[[:space:]]*#' "$ENV_FILE" | grep -v '^[[:space:]]*$' | xargs)
else
  echo "❌ .env not found at $ENV_FILE"; exit 1
fi

# ===== Validate required vars =====
: "${PROD_DB_URL:?Missing PROD_DB_URL in .env}"
: "${MIGRATIONS_DIR:?Missing MIGRATIONS_DIR in .env}"
: "${APPLIED_SUBDIR:?Missing APPLIED_SUBDIR in .env}"

APPLIED_DIR="${MIGRATIONS_DIR%/}/${APPLIED_SUBDIR}"
mkdir -p "$APPLIED_DIR"

# ===== Tools =====
command -v psql >/dev/null || { echo "❌ psql not found"; exit 1; }
command -v sha256sum >/dev/null || command -v shasum >/dev/null || { echo "❌ sha256 tool not found (install coreutils)"; exit 1; }

# ===== Lock to avoid concurrent runs =====
LOCKFILE="${MIGRATIONS_DIR%/}/.apply.lock"
exec 9>"$LOCKFILE"
if ! flock -n 9; then
  echo "❌ Another migration process is running (lock: $LOCKFILE)"; exit 1
fi

# ===== Ensure history table =====
psql "$PROD_DB_URL" -v ON_ERROR_STOP=1 -q <<'SQL'
CREATE TABLE IF NOT EXISTS public.migration_history (
  id           bigserial PRIMARY KEY,
  filename     text NOT NULL,
  sha256       text NOT NULL,
  applied_at   timestamptz NOT NULL DEFAULT now()
);
SQL

# ===== Helper: sha256 of a file =====
sha256_file() {
  if command -v sha256sum >/dev/null; then
    sha256sum "$1" | awk '{print $1}'
  else
    shasum -a 256 "$1" | awk '{print $1}'
  fi
}

# ===== Find pending migrations (exclude "applied" dir) =====
mapfile -d '' FILES < <(find "$MIGRATIONS_DIR" -maxdepth 1 -type f -name '*.sql' -print0 | sort -z)

if (( ${#FILES[@]} == 0 )); then
  echo "✅ No pending migration files in $MIGRATIONS_DIR"
  exit 0
fi

echo "🔹 Found ${#FILES[@]} migration(s) to apply."

# ===== Apply each migration =====
for FILE in "${FILES[@]}"; do
  FILE="${FILE%$'\0'}"  # trim NUL (safety)
  BASE="$(basename "$FILE")"
  SUM="$(sha256_file "$FILE")"

  echo "— Applying: $BASE"

  # Optional: skip if same filename+hash already recorded (safety if file was re-copied)
  ALREADY_APPLIED=$(psql "$PROD_DB_URL" -At -c "SELECT 1 FROM migration_history WHERE filename = $(printf %q "$BASE")::text AND sha256 = $(printf %q "$SUM")::text LIMIT 1" || true)
  if [[ "$ALREADY_APPLIED" == "1" ]]; then
    echo "   ↳ Skipping (same filename + hash already applied)."
    mv -f "$FILE" "$APPLIED_DIR/$BASE"
    continue
  fi

  # Apply as-is; let the migration file control its own transaction scope
  psql "$PROD_DB_URL" -v ON_ERROR_STOP=1 -f "$FILE"

  # Record in history
  psql "$PROD_DB_URL" -v ON_ERROR_STOP=1 -c \
    "INSERT INTO migration_history (filename, sha256) VALUES ($(printf %q "$BASE"), $(printf %q "$SUM"))"

  # Move to applied/
  mv -f "$FILE" "$APPLIED_DIR/$BASE"
  echo "   ✅ Applied and archived → ${APPLIED_DIR}/${BASE}"
done

echo "✅ All pending migrations applied."