#!/bin/bash

echo '****************************'
echo 'copying jar to docker folder'
echo '****************************'

cp /var/jenkins_home/workspace/pip2/target/*jar /var/jenkins_home/workspace/pip1/src/docker

cd /var/jenkins_home/workspace/pip2/src/docker/ && docker-compose -f docker-compose.yml build --no-cache

