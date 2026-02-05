#!/bin/bash

echo "Updating system..."
sudo dnf update -y

echo "Installing Docker..."
sudo dnf install docker -y

echo "Starting Docker service..."
sudo systemctl start docker
sudo systemctl enable docker

echo "Adding ec2-user to docker group..."
sudo usermod -aG docker ec2-user

echo "Restarting Docker..."
sudo systemctl restart docker

echo "Docker Version:"
docker --version

echo "Docker installation completed. Logout and login again!"
