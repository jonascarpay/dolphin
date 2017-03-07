#!/usr/bin/env bash

root=~/tmp

for f in $root/*/*.png ; do
  echo "$f"
  if (( RANDOM%2 )); then
    blur="-adaptive-blur $((RANDOM%10+1))"
    echo "$blur"
  fi

  color="-colorize ($((RANDOM%19-9)),$((RANDOM%19-9)),$((RANDOM%19-9)))"
  echo "$color"

  bnc="-brightness-contrast $((RANDOM%21-10))x$((RANDOM%7-3))"
  echo "$bnc"

  shave="-shave $((RANDOM%15))"
  echo "$shave"

  convert "$f[584x480]" $bnc $color $shave $blur $f$i.bmp
done
