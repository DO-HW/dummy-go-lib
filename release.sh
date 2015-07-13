#!/bin/bash
set -e 

git config user.email "szak.pal@gmail.com"
git config user.name "PalSzak"

git checkout -b master

git push --force "https://${GH_TOKEN}@${GH_REF}" master:master
