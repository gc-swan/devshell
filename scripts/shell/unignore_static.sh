#!/usr/bin/env sh
git update-index --no-skip-worktree $(git ls-files server/static)
