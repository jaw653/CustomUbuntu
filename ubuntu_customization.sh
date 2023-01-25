#!/bin/bash

#################################
##### Package Installations #####
#################################
echo [*] Installing packages...

touch setup_log.txt

# Update the package list
sudo apt-get update >> setup_log.txt

# Install Vim
sudo apt-get install -y vim >> setup_log.txt

# Install tmux
sudo apt-get install -y tmux >> setup_log.txt

# Install Hydra
sudo apt-get install -y hydra >> setup_log.txt

# Install Hashcat
sudo apt install hashcat >> setup_log.txt

# Install Gobuster
sudo apt-get install -y gobuster >> setup_log.txt

# Install Nmap
sudo apt-get install -y nmap >> setup_log.txt

# Install Sublime Text
sudo apt-get install -y sublime-text >> setup_log.txt

# Install Wireshark
sudo apt-get install -y wireshark >> setup_log.txt

# Install Aircrack-ng
sudo apt-get install -y aircrack-ng >> setup_log.txt

# Install John the Ripper
sudo apt-get install -y john >> setup_log.txt

# Install Sqlmap
sudo apt-get install -y sqlmap >> setup_log.txt

# Install Visual Studio Code
sudo snap install code --classic >> setup_log.txt

# Install Docker
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common >> setup_log.txt
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - >> setup_log.txt
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" >> setup_log.txt
sudo apt-get update >> setup_log.txt
sudo apt-get install -y docker-ce docker-ce-cli containerd.io >> setup_log.txt
sudo usermod -aG docker $USER >> setup_log.txt

# Install Metasploit
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall >> setup_log.txt
chmod 755 msfinstall >> setup_log.txt
./msfinstall >> setup_log.txt

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
# FIXME: add this firefox extension: https://addons.mozilla.org/en-US/firefox/addon/gnome-shell-integration/