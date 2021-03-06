#!/bin/bash

### https://github.com/adnanjee/hyperledger-fabric-1.4.0.git ###

### Uninstall  Older Docker Installaions ###

	echo "### Uninstall Older Docker Installations ###"

	sudo apt-get remove -y docker docker-engine docker.io


### Update the apt package index ###

	echo "### Update the apt package index ###"

	sudo apt-get Update

### Install packages to allow apt to use a repository over HTTPS ###

	echo "### Install packages to allow apt to use a repository over HTTPS ###"

	sudo sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common

###  Add Docker’s official GPG key ###

	echo "###  Add Docker’s official GPG key ###"

	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

### Set up the stable repository ###

	echo "### Set up the stable repository ###"

	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

### Update the apt package index ###

	echo "### Update the apt package index ###"

### Install the latest version of Docker CE ###

	echo "Install the latest version of Docker CE"

	sudo apt-get -y install docker-ce

### Verify that Docker CE is installed correctly by running the hello-world image ###

	echo "Verify that Docker CE is installed correctly by running the hello-world image"

	sudo docker run hello-world

### Use Docker as a non-root user ###

	echo "### use Docker as a non-root user ###"

	sudo usermod -aG docker $USER

### Install docker compose ###

	echo "# Installing Docker-Compose"
	sudo curl -L "https://github.com/docker/compose/releases/download/1.13.0/docker-compose-$(uname -s)-$(uname -m)" \
    	-o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose

### Remember to log out and back in for this to take effect! ###

	echo "### Please log out and login back for take effect!!! ###"
	echo "### Run command \"docker version\" to confirm successfull installation after login back to system"
