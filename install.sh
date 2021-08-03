#!/bin/sh

set -e

INSTALL_PATH="${HOME}/.yad"

if ! command -v git >/dev/null 2>&1; then
  echo "Cannot find git"
  exit 1
fi

if [ ! -d "${HOME}/.yad" ]; then
  echo "Installing YAD for the first time"
  git clone --depth=1 --branch master https://github.com/vovinacci/dotfiles.git "${INSTALL_PATH}" || {
    echo "git clone failed"
    exit 1
  }
  make -C "${INSTALL_PATH}" install
else
  echo "YAD is already installed"
fi
