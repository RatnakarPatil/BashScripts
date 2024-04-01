#!/bin/bash

# checkng the user is root or not

if [[ $UID -eq 0 ]]
then
	echo "It is root user with UID: $UID "
else
	echo "It is a user with UID :$UID "
fi

