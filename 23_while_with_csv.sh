#!/bin/bash

#IFS--> Internal Field Seperator


while IFS="," read id name age
do
	echo "$id $name $age"
done < test.csv



echo "this is seperator "

cat test.csv | awk 'NR!=1 {print}' 
