#!/bin/bash
#Make sure user  runs program in root

if [ "$UID" -ne  0 ]
then
	echo "Please run the program as root."
	exit 1
else
	echo "The program is being run as root."
fi

#Get the username (login)
read -p 'Enter the username to create: ' USER_NAME

#Get the full name
read -p 'Enter the full name of the user: ' COMMENT

#Get the password and password requirements
while read -p "Enter the password for this account: " PASSWORD
do
                passlen=`echo $PASSWORD | wc -c`    
               
                if [ $passlen -le 8 ]; then 
                        echo "Password has to be a minimum of 8 characters. please try again"
                else
                break
                fi
        done






#Adding the user
useradd -c "${COMMENT}" -m  ${USER_NAME}

#Check if the last command got executed with exit code 0
if [ "${?}" -ne 0 ]
then
	echo "The account could not be created, please try again."
	exit 1
fi

#Adding the user password
usermod -p ${PASSWORD} ${USER_NAME}

#Check if the last command got executed with exit code 0
if [ "${?}" -ne 0 ]
then
        echo "The passsowrd could not be set, please try again."
        exit 1
fi

#Display the username(login). password and the host for the user

echo
echo "Username:" ${USER_NAME}
echo
echo "Full_name:" ${COMMENT}
echo
echo "Password:" ${PASSWORD}
