#!/usr/bin/env bash

init() {
    go get -v -u github.com/tcnksm/ghr
    $GOPATH/bin/ghr \
        -t ${GITHUB_TOKEN} \
        -u ${CIRCLE_PROJECT_USERNAME} \
        -r ${CIRCLE_PROJECT_REPONAME} \
        "$(./astheno-ci-utils/new-tag.sh)" \
        "./bin/"
}

init
