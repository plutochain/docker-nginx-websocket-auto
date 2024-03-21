#!/bin/bash

# Updating package list
sudo apt-get update

# Installing requirements
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Adding official GPG Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Adding official Docker repository in APT sources
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Updating after we added a repository of Docker to our list
sudo apt-get update

# Install Docker CE
sudo apt-get install -y docker-ce

# Adding current user to a Docker group to run containers without sudo
sudo usermod -aG docker ${USER}
