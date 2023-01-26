#!/bin/bash

#################################
##### Package Installations #####
#################################
echo [*] Installing packages...


# Update the package list
sudo apt-get update

# Install curl
sudo snap install curl

# Install net-tools (ifconfig)
sudo apt install -y net-tools

# Install Vim
sudo apt-get install -y vim

# Install Terminator
sudo apt install -y terminator

# Install conky
sudo apt install -y conky

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
sudo snap install metasploit-framework

# Install Sliver C2
curl https://sliver.sh/install | sudo bash

# Install BeEF
sudo apt install -y beef-xss

# FIXME: # Install Burp Suite
# sudo apt install -y  burp


# FIXME: install rubeus, social engineering toolkit
# BeEF, ettercap, bettercap, nikto, armitage (if avail)
# responder, bleachbit, recon-ng, mimikatz, set, veil, bloodhound, shellter
# wordlists, spiderfoot, macchanger
# FIXME: socat, proxychains


echo [+] Done.

##########################
##### Configurations #####
##########################
echo [*] Configuring system...

# Change the screen sleep timer to infinity
gsettings set org.gnome.desktop.session idle-delay 0

# Add a user-owned bin folder to path
mkdir ~/bin
export PATH="$HOME/bin:$PATH"

# Remove annoying backspace beeps
echo "xset b off" >> ~/.bashrc && source ~/.bashrc		# FIXME: still not working

# Configure conkyrc
echo "alignment top_right
background no
border_width 0

default_color white
default_outline_color white
default_shade_color white
draw_borders no
draw_graph_borders no
draw_outline no
draw_shades no
use_xft yes
xftfont Droid Sans:size=20
gap_x 100
gap_y 60
minimum_size 100 25

no_buffers yes
out_to_console no
out_to_stderr no
extra_newline no
own_window yes
own_window_class Conky
own_window_type desktop
own_window_transparent yes
own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager
stippled_borders 0
update_interval 1.0
uppercase no
use_spacer no
show_graph_scale no
show_graph_range no

TEXT
\${execi 3600 ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'}" > ~/.conkyrc

conky &		# FIXME

# FIXME: script to make conky run and run on startup

# FIXME: setup more secure browsing / internet anonymity
# FIXME: Change desktop background
# FIXME: edit vimrc


# FIXME: remove apps from favorites bar
# FIXME: change the colors of the terminal to white

echo [+] Done.