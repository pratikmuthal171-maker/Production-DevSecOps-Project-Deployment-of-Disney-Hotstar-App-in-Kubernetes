#!/bin/bash

echo "Updating system..."
sudo dnf update -y

echo "Installing Java 17..."
sudo dnf install java-17-amazon-corretto -y

echo "Adding Jenkins repository..."
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

echo "Installing Jenkins..."
sudo dnf install jenkins -y

echo "Starting Jenkins service..."
sudo systemctl enable jenkins
sudo systemctl start jenkins

echo "Jenkins installation completed!"
echo "Access Jenkins at: http://YOUR_EC2_IP:8080"
