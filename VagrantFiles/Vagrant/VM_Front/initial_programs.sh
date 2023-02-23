#!/bin/sh

sudo apt-get update -y
sudo apt-get remove docker docker-engine docker.io -y
sudo apt install docker.io -y
sudo systemctl start docker -y
sudo systemctl enable docker -y



