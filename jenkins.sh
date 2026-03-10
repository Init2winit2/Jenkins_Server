# Bash shell script to install Jenkins on Amazon linux 2023 

echo "Updating system packages..."
sudo dnf update -y

echo "Installing Java (OpenJDK 17)..."
sudo dnf install -y java-17-amazon-corretto

#"Adding Jenkins repository..."
sudo wget -O /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

echo "Installing Jenkins..."
sudo dnf install jenkins

echo "Enabling and starting Jenkins service..."
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Use this link to access your jenkins server
# http://your_server_ip:8080

# To retrieve the initial password , use the following command
# sudo  cat /var/lb/jenkins/secrets/initialAdminPassword
