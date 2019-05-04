#!/bin/bash
now=$(date)
cd "$(dirname "$0")"
echo "$now" > timestamp
git commit -am "weekly update"
git push
