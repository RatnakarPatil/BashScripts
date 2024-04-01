#!/bin/bash

#to access the argumnets

if [ $# -eq 0 ]
then
	echo "Please provide atleast one argument"
	exit 1
fi


echo "First argument is $1"
echo  "second argument is $2"

echo "all arguments are $@"
echo "No of argumnets are $#"

#Forloop to access the values from argumnets

for filename in $@
do
	echo "Copying file - $filename"
done


