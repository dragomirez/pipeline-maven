#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u murhum -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG murhum/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push murhum/$IMAGE:$BUILD_TAG
