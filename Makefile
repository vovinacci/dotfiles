# Use bash instead of sh
SHELL := /usr/bin/env bash

.PHONY: install-homebrew
install-homebrew:
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
	brew bundle --no-lock

.PHONY: install
install: install-homebrew
