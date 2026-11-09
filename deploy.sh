#!/usr/bin/env bash
# Run from inside ~/Desktop/AnonHost
set -e

# 1) Git: push to https://github.com/ShieldCubed/anonhost
[ -d .git ] || git init -b main
git remote get-url origin >/dev/null 2>&1 || git remote add origin https://github.com/ShieldCubed/anonhost.git
git add -A
git commit -m "AnonHost: initial site" || true
git push -u origin main

# 2) Vercel: deploys this repo as its own project (separate from the main stoxswap.com project)
npx vercel --prod
