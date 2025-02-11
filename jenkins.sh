#!bin/bash
#Script to setup Jenkins on Linux machine

#Author K.Stroud  Feb 2022
#Modified: Feb 2025

# Update the System
sudo yum update

# Install Java
sudo yum install java-17-openjdk
java -version


echo "now downloading jenkins..."
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins-io/redhat-stable/jenkins.repo
# yum install wget if necessary


sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io-2023.key


echo "configuring the port 8080 on the firewall for jenkins server"
sleep 3

sudo firewall-cmd --zone=public --add-port=8080/tcp --permanent
sudo firewall-cmd --reload


yum install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Use this link to access your jenkins server
# http://your_server_ip:8080

# To retrieve the initial password , use the following command
# sudo  cat /var/lb/jenkins/secrest/initialAdminPassword
