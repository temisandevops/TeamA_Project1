#!/bin/bash
#Add functionality to add a sudo password for a specified user using sudo passwd
read -p "Enter the username to set a password: " specified_user
echo

# Read the password silently
read -s -p "Enter password: " password
echo

# Use a heredoc to pass the password to sudo passwd without echoing it
sudo passwd $specified_user --stdin <<EOF
$password
$password
EOF

echo "Password set successfully for user $specified_user"
