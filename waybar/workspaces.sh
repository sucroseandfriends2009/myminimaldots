#!/bin/bash
# dynamic workspaces for Waybar

while true; do
    ws_json=$(hyprctl workspaces -j 2>/dev/null)

    # Output fallback if empty
    if [ -z "$ws_json" ]; then
        echo "No workspaces"
    else
        # Show IDs, highlight focused workspace
        line=$(echo "$ws_json" | jq -r '
            sort_by(.id)
            | map(if .focused then "[\(.id)]" else "\(.id)" end)
            | join(" > ")
        ')
        echo "$line"
    fi

    sleep 0.1  # update every half second
done
