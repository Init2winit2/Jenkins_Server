#!bin/bash
#Script to setup Jenkins on Linux machine

#Author K.Stroud  
#Modified: Feb 2026

# Update the System
sudo yum update

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y
sudo amazon-linux-extras install java-openjdk11 -y
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins

echo "now downloading jenkins..."

wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins-io/redhat-stable/jenkins.repo
# yum install wget if necessary


# install git
sudo yum install git -y

# Use this link to access your jenkins server
# http://your_server_ip:8080

# To retrieve the initial password , use the following command
# sudo  cat /var/lb/jenkins/secrest/initialAdminPassword
