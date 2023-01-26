#!/bin/bash

#################################
##### Package Installations #####
#################################
echo [*] Installing packages...


# Update the package list
sudo apt-get update

# Install curl
sudo snap install curl

echo [*] Conducting apt-get installations...
# Install Vim
sudo apt-get install -y vim

# Install tmux
sudo apt-get install -y tmux

# Install Hydra
sudo apt-get install -y hydra

# Install Hashcat
sudo apt-get install -y hashcat

# Install Gobuster
sudo apt-get install -y gobuster

# Install Nmap
sudo apt-get install -y nmap

# Install Wireshark
sudo apt-get install -y wireshark

# Install CeWL
sudo apt install -y cewl

# Install John the Ripper
sudo snap install john-the-ripper

echo [+] Done.

echo [*] Conducting snap and more complex installations...

# Install Sublime Text
sudo snap install sublime-text --classic

# Install Visual Studio Code
sudo snap install code --classic

# Install Aircrack-ng
sudo apt install -y aircrack-ng

# Install samba
sudo apt install -y samba

# Install smbclient
sudo apt install -y smbclient

# Install Sqlmap
sudo snap install sqlmap

# Install Docker
sudo snap install docker

# Install Impacket
pip3 install impacket

# Install Metasploit
#sudo snap install curl
#curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
#chmod 755 msfinstall
# ./msfinstall
sudo snap install metasploit-framework

# Install Sliver C2
curl https://sliver.sh/install | sudo bash

# FIXME: # Install Burp Suite
# sudo apt install -y  burp >> setup_log.txt


# FIXME: add conky with IP addr
# FIXME: install rubeus
# ettercap, bettercap, nikto, armitage (if avail)
# responder, bleachbit, recon-ng, mimikatz, set, veil, bloodhound, shellter
# wordlists, spiderfoot, macchanger

# FIXME: Install / configure MATE

echo [+] Done.

##########################
##### Configurations #####
##########################
echo [*] Configuring system...

# Change the screen sleep timer to infinity
gsettings set org.gnome.desktop.session idle-delay 0

# FIXME: Remove annoying backspace beeps
# echo bind 'set bell-style none' >> ~/.bashrc

# FIXME: Change desktop background
# FIXME: edit vimrc

# FIXME: socat
# FIXME: proxychains
# FIXME: remove apps from favorites bar
# FIXME: change the colors of the terminal to white
# FIXME: change the buttons to be up down arrows and x
# FIXME: add this firefox extension: https://addons.mozilla.org/en-US/firefox/addon/gnome-shell-integration/

echo [+] Done.