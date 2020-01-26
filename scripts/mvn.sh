#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"
WORKSPACE= /var/jenkins_home/workspace/pip2/

cd  $WORKSPACE && mvn -B -DskipTests  clean package


