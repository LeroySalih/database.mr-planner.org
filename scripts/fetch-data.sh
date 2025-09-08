#!/bin/bash

# Connection settings
HOST="64.227.136.125"
DB="planner"
USER="dbuser"

# Timestamp for filename
DATE=$(date +%F_%H-%M-%S)

# Output backup file
BACKUP_FILE="planner_data_only_${DATE}.sql"

# Run pg_dump (data only, no schema)
PGPASSWORD="${PGPASSWORD}" pg_dump \
  -h "$HOST" \
  -U "$USER" \
  -d "$DB" \
  --data-only \
  --inserts \
  --column-inserts \
  > "$BACKUP_FILE"

if [ $? -eq 0 ]; then
  echo "✅ Backup successful: $BACKUP_FILE"
else
  echo "❌ Backup failed"
fi