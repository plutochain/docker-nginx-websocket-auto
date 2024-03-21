# docker-nginx-websocket-auto
# Docker-Nginx-WebSocket Setup on Ubuntu Server 22.04

This repository contains a script and configuration files to automate the installation of Docker on Ubuntu Server 22.04, and to deploy an Nginx container configured to work with WebSocket. The script handles all necessary package installations and setup procedures to get you up and running with a basic Nginx server capable of proxying WebSocket connections.
Getting Started

These instructions will guide you through the setup of Docker and deployment of an Nginx container on a fresh Ubuntu Server 22.04 installation.
# Prerequisites

    A machine with Ubuntu Server 22.04 installed.
    User with sudo privileges.

# Installation

    Clone the Repository

    First, clone this repository to your local machine using the following command:

    bash

    git clone https://github.com/plutochain/docker-nginx-websocket-auto.git

Run the Docker Installation Script

Navigate to the cloned directory and run the Docker installation script:

bash:

    cd docker-nginx-websocket-auto
    chmod +x install_docker.sh
    ./install_docker.sh

This script will update the package list, install Docker, and add your user to the Docker group.

# Build and Run the Nginx Container

After Docker has been installed, you can build and run the Nginx container with WebSocket support (bash script):


    docker build -t nginx-websocket .
    docker run -d -p 80:80 nginx-websocket

    Ensure you have modified the nginx.conf file with your WebSocket server's details before building the container.

# Configuration

    Nginx Configuration: The nginx.conf file is where you configure your Nginx server settings. Modify this file to suit your WebSocket server's requirements.

# Usage

After successful deployment, Nginx will be running in a Docker container and listening on port 80. It will proxy WebSocket connections to the server specified in the nginx.conf file.
Contributing

Contributions to improve the script or configuration are welcome. Please feel free to fork the repository and submit a pull request.
License

This project is licensed under the MIT License - see the LICENSE.md file for details.

Feel free to adjust the content according to your specific requirements or details.
