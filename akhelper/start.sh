#!/bin/bash
git pull

if [[ "$1" =~ "python" ]]; then
  $*
else
  python3 akhelper.py $*
fi
