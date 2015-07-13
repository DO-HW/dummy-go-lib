#!/bin/bash
set -e 

git checkout -b master

git merge "$TRAVIS_COMMIT"

git commit -m "Release with stable default head policy"

git push --force "https://${GH_TOKEN}@${GH_REF}" master:master
