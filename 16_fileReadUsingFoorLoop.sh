#!/bin/bash

FILE="/mnt/d/BashScripting/names.txt"

for name in $(cat $FILE)
do
	echo "Name from File is: $name"
done

