#!/bin/bash

UPTIME_SECONDS=$(cut -d. -f1 /proc/uptime)

UPTIME_MINUTES=$(( UPTIME_SECONDS / 60 ))

if [ "$UPTIME_MINUTES" -lt 5 ]; then
    echo "System was recently rebooted"
else
    echo "System is stable"
fi