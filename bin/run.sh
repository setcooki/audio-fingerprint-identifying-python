#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="$(dirname "$DIR")"

cd $BASE_DIR

docker build -t shazam . && docker run -d -it -v "/$(pwd)/db:/var/app/db" -v "/$(pwd)/mp3:/var/app/mp3" -v "/$(pwd)/mic:/var/app/mic" --rm --name shazam shazam
