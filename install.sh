#!/bin/sh

set -e

INSTALL_PATH="${HOME}/.yamd"

fail() {
  echo "$*" >&2
  exit 1
}

[ "$(uname)" =  Darwin ] || fail "This script should be run on macOS"
command -v git >/dev/null 2>&1 || fail "Cannot find git"

if [ ! -d "${INSTALL_PATH}" ]; then
  echo "Installing YAMD for the first time"
  git clone --depth=1 --branch master https://github.com/vovinacci/dotfiles.git "${INSTALL_PATH}" ||
    fail "git clone failed"
  make -C "${INSTALL_PATH}" install
else
  echo "YAD is already installed"
fi
