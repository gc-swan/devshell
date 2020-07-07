#!/usr/bin/env sh
git update-index --skip-worktree $(git ls-files server/static)
