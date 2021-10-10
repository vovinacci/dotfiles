# Notes:
#   - File structure inspired by https://github.com/joelparkerhenderson/brewfile/blob/main/Brewfile
#   - As most of the development is done for Linux, GNU tools are preferred over bundled masOS BSD tools.

# Taps
#
# Homebrew
# Bundler for non-Ruby dependencies from Homebrew, Homebrew Cask and the Mac App Store.
tap "homebrew/bundle"
# A CLI workflow for the administration of macOS applications distributed as binaries
tap "homebrew/cask"
# Casks of Ｆ🅾𝓝𝐓𝚂
tap "homebrew/cask-fonts"
# Alternate versions of Casks
tap "homebrew/cask-versions"
# Default formulae for the missing package manager for macOS
tap "homebrew/core"
# Manage background services with launchctl daemon manager
tap "homebrew/services"
#
# Other
# bats - TAP-compliant testing framework for Bash
tap "kaos/shell"
# Rotate AWS IAM Keys to be in compliance with security best practices
tap "rhyeal/aws-rotate-iam-keys"

# Must have software
#
# A simple command line interface for the Mac App Store.
brew "mas"

# Software that is typically fine for everyone
#
# Browsers
# default browser
cask "firefox"
# Brave web browser, which features security by default.
# cask "brave-browser"
# Google Chrome
cask "google-chrome"
# Terminal web browsers
brew "lynx"
brew "w3m"
#
# Office applications by Apple
mas "Keynote", id: 409183694
mas "Pages", id: 409201541
mas "Numbers", id: 409203825
#
# Chat and meet
# End-to-end encryption software
cask "keybase"
# Slack
mas "Slack", id: 803453959
# Skype
cask "skype"
# Telegram Desktop
mas "Telegram Desktop", id: 946399090
# Zoom
cask "zoom"

# eBooks
#
# E-books management software
cask "calibre"
# DjView
cask "djview"
# Kindle
cask "kindle"

# Multimedia
#
# Image manipulation
# EXIF and IPTC metadata manipulation library and tools
brew "exiv2"
# Graph visualization software
brew "graphviz"
# Tools and libraries to manipulate images in many formats
brew "imagemagick"
# Image manipulation library
brew "jpeg"
# toolkit for manipulation of graphic images, including conversion of images between a variety of different formats.
brew "netpbm"
# Draw UML diagrams
brew "plantuml"
#
# Recorders
# Record and share terminal sessions
brew "asciinema"
# Terminal interaction recorder and player
brew "ttyrec"
#
# Players
# VLC media player
cask "vlc"

# Productivity
#
# Application launcher and productivity software
cask "alfred"
# Client for the Dropbox cloud storage service
cask "dropbox"
# Clipboard manager
cask "flycut"
# Window manager for Mac
mas "Magnet", id: 441258766

# Terminal applications
#
# Terminal emulator as alternative to Apple's Terminal app
cask "iterm2"
# Reattach process (e.g., tmux) to background
brew "reattach-to-user-namespace"
# Terminal multiplexers
brew "screen"
brew "tmux"

# Editors, IDE & code tools
#
# API documentation browser and code snippet manager
cask "dash"
# GUI for vim, made for macOS.
# Requires ctags - a multilanguage implementation of Ctags
brew "macvim"
brew "ctags"
# JetBrains IDE for various programming languages
cask "goland"
cask "intellij-idea-ce"
cask "pycharm-ce"
# Microsoft Visual Studio Code
cask "visual-studio-code"
# Apple Xcode
mas "Xcode", id: 497799835

# Version control system
#
# Distributed revision control system
brew "git"
# Git extension for versioning large files
brew "git-lfs"
# GitHub support to git on the command-line
brew "hub"
# Work on GitHub issues on the command-line
brew "ghi"

# GNU command line tools
# macOS uses the POSIX version command line tools as in BSD, which are
# different from GNU version used in Linux.
#
# GNU File, Shell, and Text utilities
# Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to ${PATH} and
# $(brew --prefix coreutils)/libexec/gnuman to MANPATH.
brew "coreutils"
# GNU binary tools for native development
brew "binutils"
# File comparison utilities
brew "diffutils"
# Convert text between DOS, UNIX, and Mac formats.
brew "dos2unix"
# Collection of GNU find, xargs, and locate.
# All commands are prepended with the prefix "g". To use these commands with
# their normal names, add $(brew --prefix findutils)/libexec/gnubin to PATH
brew "findutils"
# GNU awk.
# Requires readline - library for command-line editing.
brew "gawk"
brew "readline"
# GNU sed, installed as "gsed".
# To use it as "sed" add $(brew --prefix gnu-sed)/libexec/gnubin to PATH.
brew "gnu-sed"
# GNU tar, installed as "gtar".
# To use it as "tar" add $(brew --prefix gnu-tar)/libexec/gnubin to PATH.
brew "gnu-tar"
# GNU which, installed as "gwhich".
# To use it as "which" add $(brew --prefix gnu-which)/libexec/gnubin to PATH.
brew "gnu-which"
# GNU Transport Layer Security (TLS) Library.
brew "gnutls"
# GNU grep, egrep and fgrep.
brew "grep"
# GNU data compression program.
brew "gzip"
# Collection of tools that nobody wrote when UNIX was young.
brew "moreutils"
# Executes a program periodically, showing output fullscreen
brew "watch"
# Display word differences between text files
brew "wdiff"

# OS fundamental tools that are used often.
#
# Automatic configure script builder
brew "autoconf"
# Tool for generating GNU Standards-compliant Makefiles
brew "automake"
# Cross-platform make
brew "cmake"
# GPG suite - encrypt, decrypt, sign and verify files
cask "gpg-suite"
# Improved top
brew "htop"
# Terminal-based visual file manager
brew "midnight-commander"
# Manage compile and link flags for libraries
brew "pkg-config", link: true
# Display directories as trees
brew "tree"
# Internet file retriever
brew "wget"

# File handling
#
# Compression & decompression
# 7-Zip (high compression file archiver) implementation
brew "p7zip"
# Parallel gzip
brew "pigz"
# Archive manager for data compression and backups
cask "rar"
# General-purpose data compression with high compression ratio
brew "xz"
#
# Various tools
# CD/DVD/Blu-ray premastering and recording software
brew "cdrtools"
# Perl-powered file rename script with many helpful built-ins
brew "rename"

# Text search
#
# Lightweight and flexible command-line JSON processor
brew "jq"
# Search tool like grep and The Silver Searcher
brew "ripgrep"
# Process YAML documents from the CLI
brew "yq"

# Programming languages
# C
brew "gcc"
# Go
brew "go"
# Groovy
brew "groovysdk"
# Haskell
brew "haskell-stack"
# Java
cask "adoptopenjdk8"
brew "openjdk"
brew "maven"
# Lua
brew "lua"
# Node.js
brew "node"
brew "nvm"
brew "yarn"
# Language-neutral, platform-neutral extensible mechanism for serializing structured data.
brew "protobuf"
# Python
brew "python@3.8"
brew "python@3.9"
brew "python@3.10"
brew "ipython"
# Ruby
brew "ruby"
brew "ruby-build"
# Cryptography and SSL/TLS Toolkit
brew "openssl@1.1"
# Scala
brew "scala"
brew "sbt"
# Shell
brew "bash"
brew "bash-completion2"
brew "zsh"
# Tcl/Tk
brew "tcl-tk"

# Database tooling
#
# CLI for Postgres with auto-completion and syntax highlighting
brew "pgcli"
# MongoDB management tool
cask "robo-3t"

# DevOps tools
#
# API
# Collaboration platform for API development
cask "postman"
#
# Containers & Virtualization
# Pack, ship and run any application as a lightweight container
cask "docker"
# Tool for exploring each layer in a docker image
brew "dive"
# Hypervisor for x86 virtualization
cask "virtualbox"
cask "virtualbox-extension-pack"
#
# Code formatting, linting & testing
# Bash Automated Testing System
brew "bats-assert"
brew "bats-core"
brew "bats-file"
brew "bats-support"
# AST-based pattern checker for JavaScript
brew "eslint"
# Fast linters runner for Go
brew "golangci-lint"
# Smarter Dockerfile linter to validate best practices
brew "hadolint"
# Framework for managing multi-language pre-commit hooks
brew "pre-commit"
# Static analysis and lint tool, for (ba)sh scripts
brew "shellcheck"
# Autoformat shell script source code
brew "shfmt"
# Linter for Terraform files
brew "tflint"
# Linter for YAML files
brew "yamllint"
#
# Networking
# Cluster ssh tool for Terminal.app
brew "csshx"
# Set of tools to encapsulate a TCP session in DNS packets.
brew "dns2tcp"
# 'traceroute' and 'ping' in a single tool
brew "mtr"
# Port scanning utility for large networks
brew "nmap"
# SOcket CAT: netcat on steroids
brew "socat"
# User interface to the TELNET protocol
brew "telnet"
# Efficient rsh-like utility, for using hosts in parallel
brew "pdsh"
# Remote access and connectivity software focused on security
cask "teamviewer"
# Capture data transmitted as part of TCP connections (flows)
brew "tcpflow"
# Replay saved tcpdump files at arbitrary speeds
brew "tcpreplay"
# Analyze tcpdump output
brew "tcptrace"
# command-line tools for building TCP client-server applications.
brew "ucspi-tcp"
# Graphical network analyzer and capture tool
cask "wireshark"
#
# Infrastructure tools
# Tool for creating identical machine images for multiple platforms
brew "packer"
# Tool to build, change, and version infrastructure
brew "terraform"
# CLI tool to generate terraform files from existing infrastructure
brew "terraformer"
# Tool to generate documentation from Terraform modules
brew "terraform-docs"
#
# Kubernetes tools
# GitOps Continuous Delivery for Kubernetes
brew "argocd"
# Kubernetes package manager
brew "helm"
# Run a Kubernetes cluster locally
brew "minikube"
# Kubernetes CLI
brew "k9s"
# Switch between kubectl contexts easily and create aliases
brew "kubectx"
# Kubernetes command-line interface
brew "kubernetes-cli"
# Kubernetes introspection tool for developers
brew "octant"
# Tail multiple Kubernetes pods & their containers
brew "stern"
#
# Platforms
# AWS
# Official Amazon AWS command-line interface
brew "awscli"
# Use AWS IAM credentials to authenticate to Kubernetes
brew "aws-iam-authenticator"
# Automatically rotate your IAM keys daily
brew "aws-rotate-iam-keys"
# Session Manager Plugin for the AWS CLI
cask "session-manager-plugin"

# Security
#
# Two-factor authentication software
cask "authy"
# Library to load and enumerate PKCS#11 modules
brew "p11-kit"
# OpenVPN Connect client
cask "openvpn-connect"

# Various
#
# Trains AIs to understand and translate texts
cask "deepl"
# GOG client
cask "gog-galaxy"
# Spotify
cask "spotify"
# Game trainer
cask "the-cheat"
# Lightweight BitTorrent client
cask "transmission"
# Download YouTube videos from the command-line
brew "youtube-dl"

# EOF
