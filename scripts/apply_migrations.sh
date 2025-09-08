#!/usr/bin/env bash
set -euo pipefail

# ========= Load .env safely (supports spaces) =========
ENV_FILE="${ENV_FILE:-.env}"
if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  . "$ENV_FILE"
  set +a
else
  echo "❌ .env not found at $ENV_FILE"; exit 1
fi

# ========= Validate required vars =========
: "${PROD_DB_URL:?Missing PROD_DB_URL in .env}"
: "${MIGRATIONS_DIR:?Missing MIGRATIONS_DIR in .env}"
: "${APPLIED_SUBDIR:?Missing APPLIED_SUBDIR in .env}"

# Resolve paths relative to this script if MIGRATIONS_DIR is relative
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [[ "$MIGRATIONS_DIR" != /* ]]; then
  MIGRATIONS_DIR="$(cd "$SCRIPT_DIR/$MIGRATIONS_DIR" && pwd)"
fi
APPLIED_DIR="${MIGRATIONS_DIR%/}/${APPLIED_SUBDIR}"
mkdir -p "$APPLIED_DIR"

# ========= Tools =========
command -v psql >/dev/null || { echo "❌ psql not found"; exit 1; }
command -v flock >/dev/null || { echo "❌ flock not found (install util-linux)"; exit 1; }
if command -v sha256sum >/dev/null; then
  SHA256_CMD=(sha256sum)
elif command -v shasum >/dev/null; then
  SHA256_CMD=(shasum -a 256)
else
  echo "❌ No sha256 tool found (install coreutils)"; exit 1
fi

# ========= Lock to avoid concurrent runs =========
LOCKFILE="${MIGRATIONS_DIR%/}/.apply.lock"
exec 9>"$LOCKFILE"
if ! flock -n 9; then
  echo "❌ Another migration process is running (lock: $LOCKFILE)"; exit 1
fi

# ========= Ensure history table =========
psql "$PROD_DB_URL" -v ON_ERROR_STOP=1 -q <<'SQL'
CREATE TABLE IF NOT EXISTS public.migration_history (
  id         bigserial PRIMARY KEY,
  filename   text NOT NULL,
  sha256     text NOT NULL,
  applied_at timestamptz NOT NULL DEFAULT now()
);
SQL

# ========= Collect pending .sql files (top level only) =========
mapfile -t FILES < <(find "$MIGRATIONS_DIR" -maxdepth 1 -type f -name '*.sql' | sort)

if (( ${#FILES[@]} == 0 )); then
  echo "✅ No pending migration files in $MIGRATIONS_DIR"
  exit 0
fi

echo "🔹 Found ${#FILES[@]} migration(s) to apply."

# ========= Apply in lexicographic order =========
for FILE in "${FILES[@]}"; do
  BASE="$(basename "$FILE")"

  # Optional: guard against spaces in filenames
  if [[ "$BASE" =~ [[:space:]] ]]; then
    echo "❌ Migration filenames must not contain spaces: $BASE"; exit 1
  fi

  # Compute SHA-256 of the file
  SUM="$("${SHA256_CMD[@]}" "$FILE" | awk '{print $1}')"

  echo "— Applying: $BASE"

  # Check if already applied (same filename + hash). Set vars inside psql.
  ALREADY_APPLIED=$(
    psql "$PROD_DB_URL" -At -v ON_ERROR_STOP=1 <<PSQL
\\set fname '$BASE'
\\set sha   '$SUM'
SELECT 1
FROM migration_history
WHERE filename = :'fname' AND sha256 = :'sha'
LIMIT 1;
PSQL
  )

  if [[ "$ALREADY_APPLIED" == "1" ]]; then
    echo "   ↳ Already applied (same hash). Archiving."
    mv -f "$FILE" "$APPLIED_DIR/$BASE"
    continue
  fi

  # Apply as-is; file controls its own transaction scope
  psql "$PROD_DB_URL" -v ON_ERROR_STOP=1 -f "$FILE"

  # Record in history and archive (set vars inside psql)
  psql "$PROD_DB_URL" -v ON_ERROR_STOP=1 <<PSQL
\\set fname '$BASE'
\\set sha   '$SUM'
INSERT INTO migration_history (filename, sha256)
VALUES (:'fname', :'sha');
PSQL

  mv -f "$FILE" "$APPLIED_DIR/$BASE"
  echo "   ✅ Applied and archived → ${APPLIED_DIR}/${BASE}"
done

echo "✅ All pending migrations applied."