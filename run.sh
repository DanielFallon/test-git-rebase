#!/bin/sh

cd "$(dirname "$0")"

docker build --iidfile .docker-iid . && \
    docker run --rm -it "$(cat .docker-iid)"