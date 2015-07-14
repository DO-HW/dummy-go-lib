#!/bin/bash
set -e 

exit 1;

if [ "$TRAVIS_BRANCH" == "master" ]; then 
    exit 0;
fi

git config user.email "szak.pal@gmail.com"
git config user.name "PalSzak"

git fetch origin master:master
git checkout master

git merge --no-ff "$TRAVIS_COMMIT" -m "Release with stable default head policy"

git push "https://${GH_TOKEN}@${GH_REF}" master:master
