#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASE_DIR="$(dirname "$DIR")"

cd $BASE_DIR

CONTAINER=$(docker ps -aqf "name=^shazam")

if [ ! -z "$CONTAINER" ]
then
  docker exec -it $CONTAINER make clean reset
  docker exec -it $CONTAINER python collect-fingerprints-of-songs.py
fi;
