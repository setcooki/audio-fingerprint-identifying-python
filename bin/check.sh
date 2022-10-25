#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASE_DIR="$(dirname "$DIR")"

cd $BASE_DIR

CONTAINER=$(docker ps -aqf "name=^shazam")

if [ ! -z "$CONTAINER" ]
then
  docker exec -it $CONTAINER python get-database-stat.py
fi;
