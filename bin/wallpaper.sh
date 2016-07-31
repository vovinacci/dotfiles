#!/usr/bin/env zsh

WDIR=$HOME/share/wallpapers

[ ! -d ${WDIR} ] && echo "$WDIR is not accessible" && exit 255

[ -z `whence -p feh` ] && echo "Unable to find 'feh' in PATH" && exit 254

while true; do
  find ${WDIR} -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |shuf -n1 -z |xargs -0 feh --bg-scale
  sleep 30m
done
