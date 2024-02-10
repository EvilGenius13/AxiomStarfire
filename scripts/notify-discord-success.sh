#!/bin/bash

# Replace this with your actual webhook URL
WEBHOOK_URL=$DISCORD_WEBHOOK_URL
json_data='{
     "embeds": [
         {
             "title": "Build Success :white_check_mark:",
             "description": "The build has completed successfully.",
             "color": 4586499
         }
     ]
}'

curl -H "Content-Type: application/json" \
     -X POST \
     -d "$json_data" \
     $WEBHOOK_URL