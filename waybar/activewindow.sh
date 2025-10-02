#!/bin/bash
while true; do
    win=$(hyprctl activewindow -j)
    title=$(echo "$win" | jq -r '.windowTitle // empty')
    app=$(echo "$win" | jq -r '.class // empty')

    if [ -n "$title" ]; then
        echo "$title"
    elif [ -n "$app" ]; then
        echo "$app"
    else
        echo "Desktop"
    fi

    sleep 0.1  # update 10 times per second
done
