#!/bin/bash

# for exist
FILEPATH="/mnt/d/BashScripting/test.csv"

if [[ -f $FILEPATH ]]
then
	echo "File exists"
else
	echo "File not exist"
	exit 1
fi

#for not exist
FILEPATH="/mnt/d/BashScripting/test.txt"

if [[ -f $FILEPATH ]]
then
        echo "File exists"
else
        echo "File not exist"
        exit 1
fi
