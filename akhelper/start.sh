#!/bin/bash

nohup git pull >nohup.out &

if [[ "$1" =~ "python" ]]; then
  exec "$*"
else
  python3 akhelper.py $*
fi
