#!/bin/bash

sudo mkdir -p /opt/docker/webHelloWorld/resources/
sudo cp .//resources/response.json /opt/docker/webHelloWorld/resources/
sudo chmod -R 777 /opt/docker/webHelloWorld/

docker run --rm --name web -p 8080:8080 -v /opt/docker/webHelloWorld/resources/:/opt/docker/app/resources/ webhelloworld

