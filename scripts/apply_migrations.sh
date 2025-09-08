#!/usr/bin/env bash
set -euo pipefail

# ===== Load .env safely (supports spaces) =====
ENV_FILE="${ENV_FILE:-.env}"
if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  . "$ENV_FILE"
  set +a
else
  echo "❌ .env not found at $ENV_FILE"; exit 1
fi

# ===== Validate required vars =====
: "${PROD_DB_URL:?Missing PROD_DB_URL in .env}"
: "${MIGRATIONS_DIR:?Missing MIGRATIONS_DIR in .env}"
: "${APPLIED_SUBDIR:?Missing APPLIED_SUBDIR in .env}"