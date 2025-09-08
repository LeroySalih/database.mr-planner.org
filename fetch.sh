#!/usr/bin/env bash
set -Eeuo pipefail

# ===== Config =====
BRANCH="${1:-main}"                 # pass a branch as 1st arg if not 'main'
APP_NAME="planner.mr-salih.org"     # PM2 process name
BUILD_FILE="BUILD_NUMBER.txt"       # optional: used for final message

echo "==> Deploying '$APP_NAME' from origin/$BRANCH"

# 1) Get latest code (hard reset; discards local changes)
git fetch origin
git checkout "$BRANCH"
git reset --hard "origin/$BRANCH"
git clean -df

