#!/usr/bin/env bash
set -euo pipefail

# ===== Load .env safely (trusted file) =====
ENV_FILE="${ENV_FILE:-.env}"
if [[ -f "$ENV_FILE" ]]; then
  # Export every variable defined in .env while sourcing it
  set -a
  # shellcheck disable=SC1090
  . "$ENV_FILE"
  set +a
else
  echo "❌ .env not found at $ENV_FILE"; exit 1
fi

# ===== Validate required vars =====
: "${PROD_DB_URL:?Missing PROD_DB_URL in .env}"
: "${DEV_DB_URL:?Missing DEV_DB_URL in .env}"
: "${BACKUP_DIR:?Missing BACKUP_DIR in .env}"
: "${BACKUP_PREFIX:?Missing BACKUP_PREFIX in .env}"
: "${PG_DUMP_OPTS:=}"
: "${PG_RESTORE_OPTS:=}"

# ===== Parse option strings into arrays (preserve spaces) =====
# e.g. PG_DUMP_OPTS="-Fc -Z9 --no-owner --no-privileges"
IFS=' ' read -r -a DUMP_OPTS <<< "${PG_DUMP_OPTS}"
IFS=' ' read -r -a RESTORE_OPTS <<< "${PG_RESTORE_OPTS}"

command -v pg_dump >/dev/null || { echo "❌ pg_dump not found"; exit 1; }
command -v pg_restore >/dev/null || { echo "❌ pg_restore not found"; exit 1; }

mkdir -p "$BACKUP_DIR"
TS="$(date +%Y%m%d_%H%M%S)"
DUMP_FILE="${BACKUP_DIR%/}/${BACKUP_PREFIX}_${TS}.dump"

echo "🔹 Creating production snapshot → $DUMP_FILE"
pg_dump "${DUMP_OPTS[@]}" -d "$PROD_DB_URL" -f "$DUMP_FILE"

[[ -s "$DUMP_FILE" ]] || { echo "❌ Dump file missing/empty: $DUMP_FILE"; exit 1; }

echo "🔹 Restoring snapshot into DEV: $DEV_DB_URL"
pg_restore "${RESTORE_OPTS[@]}" -d "$DEV_DB_URL" "$DUMP_FILE"

echo "✅ Snapshot created and restored to dev successfully."
echo "   File: $DUMP_FILE"