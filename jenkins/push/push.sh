#!/bin/bash





echo "***********************"
echo "**** Pushing Image ****"
echo "***********************"

IMAGE="maven_project"

echo "*** Logging In ***"
docker login -u aviboinidocker -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG aviboinidocker/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push aviboinidocker/$IMAGE:$BUILD_TAG
