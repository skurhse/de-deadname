#!/usr/bin/env bash

# REQ: Installs a gitmailmap entry to alias dead names and emails. <skr>

# SEE: https://git-scm.com/docs/gitmailmap <>

# USAGE: ./git-repo.bash REPO_PATH OLD_EMAIL NEW_EMAIL NAME <>

# CAVEAT: Tested on Debian 11 "bullseye". <2021-12-07> 

# .............................................................................

set +B -Cefuvxo pipefail

cd "$1"

echo "$2 <$4> <$3>" >> .mailmap
