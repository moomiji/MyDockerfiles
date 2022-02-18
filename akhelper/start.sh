nohup git pull >nohup.out &

if [ "$1" = "python" ]; then
  exec "$*"
elif [ "$1" = "python3" ]; then
  exec "$*"
else
  python3 $*
fi
