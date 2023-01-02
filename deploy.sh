#!/bin/bash

packagename=$1

echo "$packagename"
echo "---deleting olss package code---"
rm -rf /home/tamilnadu/*
echo "---Downloading package---"
curl --user admin:Nexus123 -o mylatest.war "$packagename"
unzip mylatest.war -d /home/tamilnadu/
rsync -avz /home/tamilnadu/* tamilnadu@44.208.33.213:/usr/local/tomcat9/webapps/jan03-demo/
