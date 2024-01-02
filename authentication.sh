#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script as root"
    exit 1
fi

# Set password "knoldus" for the "ubuntu" user
echo "Setting the password 'knoldus' for the 'ubuntu' user"
echo -e "knoldus\nknoldus" | passwd ubuntu

# Add the "ubuntu" user to the sudo group
usermod -aG sudo ubuntu

# Path to sshd_config
sshd_config="/etc/ssh/sshd_config"


# Update PasswordAuthentication setting in sshd_config
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' "$sshd_config"
echo "PasswordAuthentication set to yes"

# Restart SSH service
sudo systemctl restart ssh
