#!/bin/bash

now=$(date)
echo "$now" > timestamp
git commit -am "weekly update"
git push

