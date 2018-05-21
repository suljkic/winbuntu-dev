#!/bin/bash
# Install Listed Packages
ls -lathr
apt update
grep -v '#' packages-list | xargs apt install -y
# Install Docker-CE
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt install -y  docker-ce