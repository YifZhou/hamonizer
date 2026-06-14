#!/usr/bin/env bash
# setup_repo.sh — initialize local git repo and push to GitHub
# Run this once from within the jiang-zemin-quotes/ directory

set -e

REPO_NAME="jiang-zemin-quotes"
GITHUB_USER="your-github-username"   # EDIT THIS

echo "==> Initializing git repo..."
git init
git checkout -b main
git config user.email "zhouyifan1012@gmail.com"
git config user.name "Yifan Zhou"

echo "==> Adding files..."
git add .
git commit -m "Initial commit: Jiang Zemin verified quote corpus

Seven source files covering 1990–2009:
- HK journalist incident (蛤三篇 篇一, 2000)
- Mike Wallace / 60 Minutes interview (蛤三篇 篇二, 2000)
- Clinton–Jiang press conference (1998)
- Barbara Walters interview (1990)
- Three Represents official texts (2000–2002)
- CUEC / 国机二院 visit (蛤三篇 篇三, 2009)
- Multilingual performances (Italian, Russian, English)

Organized by source (sources/) and by language (by_language/).
All quotes verified against primary sources."

echo "==> Creating GitHub repo via API..."
# Requires: gh CLI authenticated, or replace with curl + token
# Option A: gh CLI
gh repo create "$GITHUB_USER/$REPO_NAME" \
  --public \
  --description "Verified Jiang Zemin quote corpus for Moha (膜蛤) skill" \
  --source=. \
  --remote=origin \
  --push

# Option B (if gh is not installed), uncomment and set GH_TOKEN:
# GH_TOKEN="your_token_here"
# curl -s -X POST \
#   -H "Authorization: token $GH_TOKEN" \
#   -H "Accept: application/vnd.github.v3+json" \
#   https://api.github.com/user/repos \
#   -d "{\"name\":\"$REPO_NAME\",\"description\":\"Verified Jiang Zemin quote corpus for Moha skill\",\"private\":false}"
# git remote add origin "https://github.com/$GITHUB_USER/$REPO_NAME.git"
# git push -u origin main

echo "==> Done. Repo available at: https://github.com/$GITHUB_USER/$REPO_NAME"
