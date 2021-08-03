#!/bin/sh

set -e

if ! command -v git >/dev/null 2>&1; then
  echo "Cannot find git"
  exit 1
fi

INSTALL_PATH="${HOME}/.yamd"

if [ ! -d "${INSTALL_PATH}}" ]; then
  echo "Installing YAMD for the first time"
  git clone --depth=1 --branch master https://github.com/vovinacci/dotfiles.git "${INSTALL_PATH}" || {
    echo >&2 "git clone failed"
    exit 1
  }
  make -C "${INSTALL_PATH}" install
else
  echo "YAD is already installed"
fi
