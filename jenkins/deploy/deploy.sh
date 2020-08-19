#!/bin/bash

echo "*************************"
echo "**** Deploying image ****"
echo "*************************"

echo maven_project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth prod-user@ec2-3-15-46-242.us-east-2.compute.amazonaws.com:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish prod-user@ec2-3-15-46-242.us-east-2.compute.amazonaws.com:/tmp/publish
ssh -i /opt/prod prod-user@ec2-3-15-46-242.us-east-2.compute.amazonaws.com "/tmp/publish"
