#!/usr/bin/env bash

date=$(date +'%Y.%m.%d')
version=${CIRCLE_BUILD_NUM-$date}
tag=v$version-$(git log --format=%h -1)
echo $tag
