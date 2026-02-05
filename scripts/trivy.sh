#!/bin/bash
# Install Trivy on Amazon Linux 2023

echo "Updating system..."
sudo dnf update -y

echo "Installing required packages..."
sudo dnf install wget curl gnupg -y

echo "Adding Trivy repository..."
cat <<EOF | sudo tee /etc/yum.repos.d/trivy.repo
[trivy]
name=Trivy repository
baseurl=https://aquasecurity.github.io/trivy-repo/rpm/releases/\$basearch/
gpgcheck=1
enabled=1
gpgkey=https://aquasecurity.github.io/trivy-repo/rpm/public.key
EOF

echo "Installing Trivy..."
sudo dnf install trivy -y

echo "Trivy Version:"
trivy --version
