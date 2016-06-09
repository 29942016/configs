#!/bin/bash
runlevel=$(id -u)
kernel=$(uname -r)

if [ $runlevel != "0" ]; then
    echo "We need root!" >&2
    exit 1
fi
    
clear
echo -e "Detected kernel: ${kernel}"
echo -e "Starting my post-OS installation script...\n"

echo -e "\n#==> System upgrade..."
dnf -y upgrade

echo -e "\n#==> Installing Graphical applications..."
# Graphical
dnf -y install tmux thunderbird firefox thunar vlc xfce4-terminal libreoffice gimp

echo -e "\n#==> Installing Non-Graphical applications..."
# Non-Graphical
dnf -y install vim git python php nmap figlet mc ncurses*

echo -e "\n#==> Installing PIP applications..."
pip install pyradio 

echo -e "\n#==> Installing Group packages..."
# Groups
dnf -y groupinstall "C Development Tools and Libraries" "Administration Tools" "Development Tools"

#Fonts
echo -e "\n#==> Installing fonts..."
dnf -y install google-droid-*-fonts

#Configs
echo -e "\n#==> Installing my custom rpms..."
rpm -ivh "https://github.com/Oliver-Buckler/my-config/blob/master/rpms/cmatrix-1.0-1.x86_64.rpm?raw=true"
rpm -ivh "https://github.com/Oliver-Buckler/my-config/blob/master/rpms/xflux-1.0-1.x86_64.rpm?raw=true"
rpm -ivh "https://github.com/Oliver-Buckler/my-config/blob/master/rpms/skype-4.3.fedora.i586.rpm?raw=true"

echo -e "\n#==> All finished!"

