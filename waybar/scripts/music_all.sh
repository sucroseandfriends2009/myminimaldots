#!/bin/bash
# Waybar Spotify simple indicator (non-clickable)

while true; do
    status=$(playerctl --player=spotify status 2>/dev/null)

    # If Spotify is not running, output nothing
    if [[ -z "$status" ]]; then
        echo ""
        sleep 1
        continue
    fi

    artist=$(playerctl --player=spotify metadata artist 2>/dev/null)
    song=$(playerctl --player=spotify metadata title 2>/dev/null)

    if [[ "$status" == "Playing" ]]; then
        echo "♫ $artist - $song"
    elif [[ "$status" == "Paused" ]]; then
        echo "- $artist - $song"
    fi

    sleep 0.5
done
