#!/usr/bin/env bash

TAGNAME="docker-compose"
VESRION=3.17

docker buildx build --platform linux/amd64 -t $TAGNAME .

docker tag $TAGNAME gnextapp/$TAGNAME:$VESRION
docker tag $TAGNAME gnextapp/$TAGNAME:latest

docker push gnextapp/$TAGNAME:$VESRION
docker push gnextapp/$TAGNAME:latest
