#!/bin/bash
# Gets the PID of the focused window and kills it

FOCUSED_PID=$(hyprctl activewindow -j | jq -r '.pid')
if [ -n "$FOCUSED_PID" ]; then
    kill -9 "$FOCUSED_PID"
fi
