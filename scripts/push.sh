#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="mavenproject"

echo "** Logging in ***"
docker login -u ahmeddif -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG ahmeddif/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"

docker push ahmeddif/$IMAGE:$BUILD_TAG

