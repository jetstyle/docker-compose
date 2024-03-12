#!/usr/bin/env bash

TAGNAME="docker-compose"
ACCOUNT="jetstylehub"

# change version when you build image 
VESRION=3.17.1

docker buildx build --platform linux/amd64 -t $TAGNAME .

docker tag $TAGNAME $ACCOUNT/$TAGNAME:$VESRION

docker push $ACCOUNT/$TAGNAME:$VESRION
