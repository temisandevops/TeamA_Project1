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



















