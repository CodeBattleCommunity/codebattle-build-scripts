#!/usr/bin/env bash
docker run -d -p 8081:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /var/jenkins/workspace/:/var/jenkins/workspace/ \
    jenkins-cd:latest
