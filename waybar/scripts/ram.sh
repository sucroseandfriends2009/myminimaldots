#!/bin/bash
# Show RAM usage as used/total in GB
free -h | awk '/^Mem:/ {print "RAM " $3 "/" $2}'
