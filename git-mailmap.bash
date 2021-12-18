#!/usr/bin/env bash

# REQ: Installs a gitmailmap entry to alias dead names and emails. <skr 2021-12-17>

# SEE: https://git-scm.com/docs/gitmailmap <>

# USAGE: ./git-repo.bash REPO_PATH OLD_EMAIL NEW_EMAIL NAME <>
# .............................................................................
set +B -Cefuvxo pipefail

cd "$1"

echo "$2 <$4> <$3>" >> .mailmap
