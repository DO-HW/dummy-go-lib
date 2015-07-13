#!/bin/bash
set -e 

git config user.email "szak.pal@gmail.com"
git config user.name "PalSzak"

git checkout -b master

git merge "$TRAVIS_COMMIT"

git commit -m "Release with stable default head policy"

git push --force "https://${GH_TOKEN}@${GH_REF}" master:master
