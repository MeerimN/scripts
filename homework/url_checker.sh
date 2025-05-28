#!/bin/bash

URLS=(
  "http://localhost"
  "http://example.com"
  "https://code.akumotechnology.com"
)

for URL in "${URLS[@]}"; do
  STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}" "$URL")

  if [ "$STATUS_CODE" -eq 200 ]; then
    echo "$URL - OK"
  else
    echo "$URL - ERROR (Status Code: $STATUS_CODE)"
  fi
done