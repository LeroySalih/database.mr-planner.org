#!/bin/bash

source ../../.env

# Remove debug.sql if it already exists
rm -f debug.sql


# Find .sql files that start with a number, sort them, and concatenate into debug.sql
for file in $(ls | grep -E '^[0-9].*\.sql$' | sort); do
echo "-- File: $file" >> debug.sql
cat "$file" >> debug.sql
echo -e "\n" >> debug.sql
done


echo "All matching .sql files have been combined into debug.sql"
# Run the SQL script with psql
psql ON_ERROR_STOP=1 -h localhost -U dbuser -d planner -f debug.sql || exit 1