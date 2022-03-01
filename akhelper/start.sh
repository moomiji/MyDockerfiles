#!/bin/bash

if [[ "$1" =~ "python" ]]; then
  $*
else
  python3 akhelper.py $*
fi

git pull
