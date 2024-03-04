Team A – Devops Cohort 14 – Project 1
Objective: Design a Bash script for managing user accounts on a Linux system. The script should 
allow users to perform various actions, such as adding a new user, deleting a user, listing all users, 
adding a sudo password, locking/unlocking a user account, and setting account expiry.
Requirements:
1. The script should display a menu to the user with the following options:
o 1: Add a new user
o 2: Delete a user
o 3: List all users
o 4: Add a sudo password
o 5: Lock/Unlock a user account
o 6: Set account expiry date
o Any other key: Display an error message and exit
2. Implement the functionality for each menu option:
o Add a new user (Option 1): Prompt the user for the new username. Display a 
success message.
o Delete a user (Option 2): Prompt the user for the username to be deleted to 
remove the user. Display a success message.
o List all users (Option 3): To display a list of all usernames in the system.
o Add a sudo password (Option 4): Prompt the user for the username to set a sudo 
password. Display a success message.
o Lock/Unlock a user account (Option 5): Prompt the user for the username and 
whether to lock or unlock the account. Display appropriate success messages.
o Set account expiry date (Option 6): Prompt the user for the username to set the 
account expiry date. Display a success message
o Invalid choice: Display an error message and exit the script.
Team 
Member
Assigned Task
Temisan Implement input handling for user management. Add Options and initialize the 
project.
Perform Option 1 - Prompt the user for the new username. Display a success 
message. Test thoroughly. Notify Debz once done.
Debz Implement the deletion of a user account, and provide appropriate feedback. Notify 
Nancy once done
Nancy Enhance the script to list all existing users using the cut command. Notify 
Maryspear once done.
Maryspear Add functionality to add a sudo password for a specified user using sudo passwd. 
Notify Temitope once done.
Temitope Add code to unlock a user account if it was locked. Ensure proper notification is 
provided. Notify Mercy once done.
Mercy Implement the setting of user account expiry date. Notify Mercy once done
Henry Invalid choice: Display an error message and exit the script. Notify Temisan on the 
completion of Project
 GitHub Collaboration Workflow:
 Fork https://github.com/temisandevops/TeamA_Project1
 Clone the shared repository to your local machine.
 Create a branch for your assigned task
 Commit your changes and push them to your forked repository.
 Create a pull request from your fork to the main shared repository.
 Notify the next team member in the table once you've pushed the code
