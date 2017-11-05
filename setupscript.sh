#!/bin/bash

## Setup Docker
 apt-get install \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common
    
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  
  add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
apt update && sudo apt install docker-ce -y
  
## Setup Tor
echo "deb http://deb.torproject.org/torproject.org xenial main" >> /etc/apt/sources.list

gpg --keyserver keys.gnupg.net --recv A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -

apt update && apt install tor deb.torproject.org-keyring -y

## setup salt-minion
echo "10.0.1.110  salt jserver" >> /etc/hosts
apt install salt-minion -y
