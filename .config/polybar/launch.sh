#!/usr/bin/env bash

# kill all instances
killall -q polybar

# wait for killing
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch bar(s) on every monitor
echo "---" | tee -a /tmp/polybar.log
for m in $(polybar -m | cut -d ":" -f1); do
    MONITOR=$m polybar --reload bottombar >> /tmp/polybar$m.log 2>&1 &
done

echo "Bar(s) launched"
