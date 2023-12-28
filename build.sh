#!/usr/bin/env bash

TAGNAME="docker-compose"
ACCOUNT="jetstylehub"
VESRION=3.17

docker buildx build --platform linux/amd64 -t $TAGNAME .

docker tag $TAGNAME $ACCOUNT/$TAGNAME:$VESRION
docker tag $TAGNAME $ACCOUNT/$TAGNAME:latest

docker push $ACCOUNT/$TAGNAME:$VESRION
docker push $ACCOUNT/$TAGNAME:latest
