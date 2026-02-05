#!/bin/bash
# Install Terraform on Amazon Linux 2023

echo "Updating system..."
sudo dnf update -y

echo "Installing dependencies..."
sudo dnf install yum-utils gnupg wget -y

echo "Adding HashiCorp repository..."
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

echo "Installing Terraform..."
sudo dnf install terraform -y

echo "Terraform Version:"
terraform -v
