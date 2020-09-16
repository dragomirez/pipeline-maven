#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth prod-user@prod:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish prod-user@prod:/tmp/publish
ssh -i /opt/prod prod-user@prod "/tmp/publish"
