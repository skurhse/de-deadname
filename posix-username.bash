#!/usr/bin/env bash

# CAVEAT: Run as root. <>

set -o errexit
set -o pipefail

if [[ $# -ne 2 ]]; then
  echo ./posix-username.bash DEADNAME NAME
  exit 1
fi

deadname="$1"
name="$2"

usermod \
  --move-home --home "/home/$name" \
  --login "$name" \
-- "$deadname"

