#!/bin/bash
set -e 

export GIT_COMMITTER_EMAIL=szak.pal@gmail.com
export GIT_COMMITTER_NAME=PalSzak

git branches
git checkout master

git merge "$TRAVIS_COMMIT"

git commit -m "Release with stable default head policy"

git push --force "https://${GH_TOKEN}@${GH_REF}" master:master
