#!/bin/bash

# Replace this with your actual webhook URL
WEBHOOK_URL=$DISCORD_WEBHOOK_URL

curl -H "Content-Type: application/json" \
     -X POST \
     -d '{"content": "Build failed: :cross_mark:"}' \
     $WEBHOOK_URL