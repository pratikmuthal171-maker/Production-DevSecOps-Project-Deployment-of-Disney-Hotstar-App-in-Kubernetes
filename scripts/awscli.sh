#!/bin/bash

echo "Updating system..."
sudo dnf update -y

echo "Installing unzip..."
sudo dnf install unzip curl -y

echo "Downloading AWS CLI v2..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

echo "Unzipping..."
unzip awscliv2.zip

echo "Installing AWS CLI..."
sudo ./aws/install --update

echo "AWS CLI Version:"
aws --version
