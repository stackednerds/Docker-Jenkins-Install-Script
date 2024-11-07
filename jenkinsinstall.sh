#!/bin/bash

# Update package repository and install Java
sudo apt update
sudo apt install fontconfig openjdk-17-jre -y
java -version
# Download and install Jenkins
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
# Start Jenkins service
sudo systemctl start jenkins
# Enable Jenkins to start on boot
sudo systemctl enable jenkins
