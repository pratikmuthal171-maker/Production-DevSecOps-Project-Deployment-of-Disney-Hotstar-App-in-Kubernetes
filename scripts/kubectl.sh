#!/bin/bash
# Script to install kubectl on Amazon Linux

echo "Updating system..."
sudo dnf update -y

echo "Installing curl..."
sudo dnf install curl -y

echo "Downloading latest kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

echo "Installing kubectl..."
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

echo "kubectl installed successfully!"
kubectl version --client
