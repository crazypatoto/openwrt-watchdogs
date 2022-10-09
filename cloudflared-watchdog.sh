#!/bin/sh

SERVICE="cloudflared"

if pidof "$SERVICE" >/dev/null
then 
    # echo "$SERVICE is running"
    exit 0
else
    # echo "$SERVICE is not running"
    service cloudflared start  
fi
