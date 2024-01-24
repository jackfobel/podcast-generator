#!/bin/bash

echo "============================"

# output name and email of person running script.
git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"

# allows us to run git operations here.
git config --global --add safe.directory /github/workspace

# run our python script to create the rss feed file.
python3 /usr/bin/feed.py

# check-in our rss feed file.
git add -A && commit -m "Update Feed"
git push --set-upstream origin main

echo "============================"