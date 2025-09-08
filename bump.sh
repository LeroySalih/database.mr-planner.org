#!/bin/bash
set -e  # exit on error

FILE="BUILD_NUMBER.txt"

# 1. Read current number (default 0 if file missing/empty)
if [[ -f "$FILE" ]]; then
  num=$(cat "$FILE")
else
  num=0
fi

# Ensure it's a number
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
  num=0
fi

# 2. Increment and write back
num=$((num + 1))
echo "$num" > "$FILE"

# 3. Add and commit
git add -A
if git commit -m "Build $num"; then
  # 4. Push to origin
  if git push origin HEAD; then
    echo "Build $num completed."
  else
    echo "Push failed."
    exit 1
  fi
else
  echo "Commit failed."
  exit 1
fi