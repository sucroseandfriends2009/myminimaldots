#!/bin/bash
# Show CPU usage as percentage
grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {printf "CPU %.1f%%", usage}'
