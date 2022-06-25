#!/bin/bash
# ~/.config/polybar/launch.sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# if type "xrandr"; then
if 0; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar -rq main &
        # MONITOR=$m polybar -rq workspaces &
        # MONITOR=$m polybar -rq time &
        # MONITOR=$m polybar -rq status &
    done
else
    polybar -rq main &
    # polybar -rq workspaces &
    # polybar -rq time &
    # polybar -rq status &
fi

echo "Polybar launched..."
