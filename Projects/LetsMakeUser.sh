#!/bin/bash

# Script should be execute with sudo/root access


if [[ $UID -ne 0  ]]
then
	echo "Please run with sudo or root."
	exit 1
fi

# User should provide atleast one argument as username else guide him/her

if [[ "$#" -lt 1 ]]   # $# --> is used to find the number of arguments passed by user.
then
	echo "Usage: ${0} <user_name> [-optional] comment"
	echo "Create user with name <user_name> and optional comment field of COMMENT"
	exit 1
fi

# Store first argument as user name.

USER_NAME="$1"  # $1 --> is used to filter first argument for username.


# In case of more than one argument, Store it as account comment
shift # using this we shifted first argument and
COMMENT="$@" # we have taken remaining all part as comment using $#.

# Create a password
PASSWORD=$(date +%s%N)

#Create user
useradd -c "$COMMENT" -m $USER_NAME

# Check if the user already exists
if [ $? -eq 9 ]
then
    echo "User '$USER_NAME' already exists. Exiting."
    exit 1
fi

#Check if the user succefully created or not
if [[ $? -ne 0 ]]
then
	echo "The acount could not be created."
	exit 1
fi

# Set the password for the user
echo "$USER_NAME:$PASSWORD" | chpasswd

# Check if password is successfully set or not
if [[ $? -ne 0 ]]
then
	echo "Password could not be set."
	exit 1
fi


# Force password change on first login
passwd -e $USER_NAME  #-e is used as Expire first password and generate second password after first login.



# display the username , password, and the host where the users are created.

echo
echo "Username: $USER_NAME"
echo "Password: $PASSWORD"
echo "Hostname: $(hostname)"


