#!/bin/bash
# Show root filesystem storage used/total
df -h --output=used,size / | tail -1 | awk '{print "SSD " $1 "/" $2}'
