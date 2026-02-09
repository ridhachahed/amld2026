#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
WORKTREE_DIR="/tmp/amld2026-gh-pages"

cd "$REPO_ROOT_DIR"

echo "==> Building Astro site"
cd astro-workshop
npm run build
cd "$REPO_ROOT_DIR"

echo "==> Preparing gh-pages worktree"
git worktree prune >/dev/null 2>&1 || true

if [ -d "$WORKTREE_DIR" ] && [ ! -d "$WORKTREE_DIR/.git" ]; then
  rm -rf "$WORKTREE_DIR"
fi

if [ ! -d "$WORKTREE_DIR/.git" ]; then
  if git show-ref --verify --quiet refs/heads/gh-pages; then
    git worktree add -f "$WORKTREE_DIR" gh-pages
  else
    git worktree add -f "$WORKTREE_DIR" -b gh-pages
  fi
fi

echo "==> Syncing dist/ to gh-pages"
rm -rf "$WORKTREE_DIR"/*
cp -R astro-workshop/dist/* "$WORKTREE_DIR"/

echo "==> Committing + pushing"
cd "$WORKTREE_DIR"
git add -A
if git diff --cached --quiet; then
  echo "No changes to deploy."
  exit 0
fi

git commit -m "Deploy site"
git push origin gh-pages

echo "==> Done"
echo "Deployed to: https://ridhachahed.github.io/amld2026/"
