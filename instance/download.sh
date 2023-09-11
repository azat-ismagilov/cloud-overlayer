#!/bin/bash

USER=icpc
REPO=live-v3

git clone https://github.com/$USER/$REPO.git /app/live-v3
ASSET_URL=$(curl -s https://api.github.com/repos/icpc/live-v3/releases/latest | grep "browser_download_url" | grep "live-v3.*live-v3.*.jar" | cut -d : -f 2,3 | tr -d \")
curl -L -o /app/live.jar $ASSET_URL

echo "{}" > /app/creds.json

