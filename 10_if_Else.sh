#!/bin/bash

read -p "Enter yout marks: " marks

if [[ $marks -gt 40 ]]
then
	echo "You are passed"
else
	echo "You are fail"
fi

