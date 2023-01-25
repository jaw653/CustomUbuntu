#!/bin/bash

#################################
##### Package Installations #####
#################################
echo [*] Installing packages...


# Update the package list
sudo apt-get update

# Install Vim
sudo apt-get install -y vim

# Install tmux
sudo apt-get install -y tmux

# Install Hydra
sudo apt-get install -y hydra

# Install Hashcat
sudo apt install hashcat

# Install Gobuster
sudo apt-get install -y gobuster

# Install Nmap
sudo apt-get install -y nmap

# Install Sublime Text
sudo apt-get install -y sublime-text

# Install Wireshark
sudo apt-get install -y wireshark

# Install Aircrack-ng
sudo apt-get install -y aircrack-ng

# Install John the Ripper
sudo apt-get install -y john

# Install Sqlmap
sudo apt-get install -y sqlmap

# Install Visual Studio Code
sudo snap install code --classic

# Install Docker
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER

# Install Metasploit
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
chmod 755 msfinstall
./msfinstall

######################
##### Burp Suite #####
######################
# Create SSL Certificates
#sudo mkdir /etc/burp
#burp --ca-cert
#sudo mv cacert.pem /etc/burp/ssl_cert_ca.pem
#burp --client-cert
#sudo mv client.pem /etc/burp/ssl_cert-client.pem
#sudo mv client.key /etc/burp/ssl_cert-client.key
# Install Java (Required for Burp Suite)
#sudo apt-get install -y openjdk-8-jre-headless

# Download Burp Suite
#wget https://portswigger.net/burp/releases/download?product=community&version=2.1.03&type=Linux -O burpsuite.sh

# Make the installer executable
#chmod +x burpsuite.sh

# Run the installer
#sudo ./burpsuite.sh

# FIXME: add conky with IP addr

# FIXME: Install / configure MATE


##########################
##### Configurations #####
##########################
# Change the screen sleep timer to infinity
gsettings set org.gnome.desktop.session idle-delay 0

# FIXME: Remove annoying backspace beeps
# echo bind 'set bell-style none' >> ~/.bashrc

# FIXME: Change desktop background
# FIXME: edit vimrc


# FIXME: remove gnome
# FIXME: change the colors of the terminal to white
# FIXME: change the buttons to be up down arrows and x