#!/bin/bash

git remote add super https://gett-systems:$GITLAB_ACCESS_TOKEN@gitlab.com/getto-systems-labo/habit/document.git
git remote add github https://getto-systems:$GITHUB_ACCESS_TOKEN@github.com/getto-systems/getto-habit-document.git
git tag $(cat .release-version)
git push super HEAD:master --tags
git push github HEAD:master --tags
