#!/bin/bash

# 1. get docker installation script and run
# 2. start docker daemon
# 3. add current user to "docker" group to run docker command without sudo
# 4. login as current user again so that step 3 apply immediately

# print executed commands
set -x

curl -fsSL get.docker.com | sh && \
  sudo mkdir -p /etc/docker && sudo cp daemon.json /etc/docker/daemon.json && \
  sudo ./create-certificates.sh && sudo mkdir -p /var/docker && sudo cp -r ./certs /var/docker && \
  sudo systemctl start docker && \
  sudo /usr/sbin/usermod -aG docker $USER && \
  sudo su - $USER
