#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASE_DIR="$(dirname "$DIR")"
FILE="$1"
SECONDS=7

if [ ! -z "$2" ]; then
    SECONDS=$2
fi

cd $BASE_DIR

CONTAINER=$(docker ps -aqf "name=^shazam")

if [ ! -z "$CONTAINER" ]
then
  docker exec -it $CONTAINER python recognize-from-file.py --file $FILE
fi;
