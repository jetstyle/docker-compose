#!/usr/bin/env bash

TAGNAME="docker-compose"
ACCOUNT="jetstylehub"

# change version when you build image 
VESRION=v3.17.3

docker buildx build --platform linux/amd64 -t $TAGNAME .

docker tag $TAGNAME $ACCOUNT/$TAGNAME:$VESRION

docker push $ACCOUNT/$TAGNAME:$VESRION
