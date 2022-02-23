#!/bin/bash
#
# this script creates a new user on the local system 
# we will be prompted to enter the username (login), the person name, and a password
#after creating the user, the script should show us the username, password, and host. 

#Make sure the script is being executed with superuser privileges.
if [[ "${UID}" -ne 0 ]]
then
	echo 'Please run with sudo or as root.'
	exit 1
else
	echo "Thanks for running the script as root."
fi

#Get the username (login).
read -p 'Enter the username to create: ' USER_NAME

#Get the full name (Contents for the description field).
read -p 'Enter the full name for the user: ' COMMENT

#Get the password.
read -p 'Enter the password to use for the account: ' PASSWORD

#Adding the user. 
useradd -c "${COMMENT}" -m ${USER_NAME}

#Check if the last command got executed with exit code 0 
#We dont want to tell the user that an account was created when it hasnt been.

if [[ "${?}" -ne 0 ]]
then 
	 echo 'The account could not be created.'
	 exit 1
fi

#Adding the user password.
usermod -p ${PASSWORD} ${USER_NAME}
#
if [[ "${?}" -ne 0 ]]
then 
         echo ''
         exit 1
fi

#Display username, password, and hostname.
echo 	
echo 'Username: '
echo ${USER_NAME}
echo
echo 'Password: '
echo ${PASSWORD}
echo
echo 'Host :'
echo ${COMMENT}
exit 0
#Display the password.
 
#Display the host.

