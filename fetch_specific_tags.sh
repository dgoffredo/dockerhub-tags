#!/bin/sh

./fetch | \
    jq --raw-output '.results[] | .name' | \
    grep '^[0-9]\+\.[0-9]\+\.[0-9]\+' | \
    sort --version-sort | \
    uniq
