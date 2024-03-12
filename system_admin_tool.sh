#!/bin/bash
#Welcome Team A Cohort 14 - First Team Project
#Title: User Management with Bash script
#system_admin_tool.sh

#Implement input handling for user management. Add Options and initialize the 
project.
Perform Option 1 - Prompt the user for the new username. Display a success 

echo "Please select an Option below of User Management"
echo "***********************************************"
read -p "Enter 1 to add user | Enter 2 to delete user | Enter 3 to list user| Enter 4 to add Sudo password | Enter 5 to lock and Unlock User account | Enter 6 to set User Account " option

case $option in
1)
read -p "Enter the Username to add " username
echo "User $username added successfully"
echo "***********************************************"
;;
esac

#Implement the deletion of a user account, and provide appropriate feedback. Notify Nancy once done

case $option in
2)
read -p "Enter the Username to delete " username
echo "User $username deleted successfully"
echo "***********************************************"
;;
esac

#Enhance the script to list all existing users using the cut command. Notify Maryspear once done.

case $option in
3)
echo "list of all existing users using the cut command"
sudo cat /etc/passwd | cut -d: -f1
echo "***********************************************"
echo "All users listed successfully"
echo "***********************************************"
;;
esac


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


#Add code to unlock a user account if it was locked. Ensure proper notification is 
provided

# Check if the script is run with root privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root" >&2
    exit 1
fi
# Check if a username is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi
# Get the username from the argument
username=$1
# Check if the user exists
if ! id "$username" &>/dev/null; then
    echo "User $username does not exist"
    exit 1
fi
# Check if the user is already unlocked
if passwd -S "$username" | grep -q 'Password locked'; then
    # Unlock the user account
    passwd -u "$username"
    echo "User $username has been unlocked"
else
    echo "User $username is already unlocked"
fi
echo "***********************************************"





















