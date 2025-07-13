#!/bin/bash

THRESHOLD=0
EMAIL="kelvinnuamah123@gmail.com"

USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  MESSAGE="Disk usage warning: Current usage is ${USAGE}% on root partition."
  echo "$MESSAGE" | mail -s "⚠️ Disk Usage Alert: ${USAGE}%" "$EMAIL"
  echo "$(date): ALERT SENT - $MESSAGE"
else
  echo "$(date): OK - Disk usage is ${USAGE}%"
fi




