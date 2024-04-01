#!/bin/bash

#To creat a user, Prrovide username and description

echo "creating user"

echo "user name is $1"

#we r using "shift" to remove first arg from input and remaining shift to 2nd args.
shift 
echo "Description is $@"

