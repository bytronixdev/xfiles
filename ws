#!/bin/bash
if [ "$( (echo >/dev/tcp/localhost/80) &>/dev/null && echo "active" || echo "inactive")" = inactive ];
then
screen -dmS socks python /etc/socks.py 80
fi
