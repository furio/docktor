#!/usr/bin/env bash
/etc/init.d/privoxy start
/etc/init.d/tor start

while true; do
    sleep 5
done