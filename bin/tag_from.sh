#!/usr/bin/env bash

tag="${1}"

if [ "$tag" == "" ]; then
    tag=$(git describe --tags "$(git rev-list --tags --max-count=1)")
fi

echo "::set-output name=tag::${tag}"
