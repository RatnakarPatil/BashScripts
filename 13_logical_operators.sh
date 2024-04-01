#!/bin/bash

#AND Operator

read -p "What is your age ? " age
read -p "Your Country ? " country


if [[ $age -ge 18 ]] && [[ $country == "India" ]]
then
	echo "You can vote"
else
	echo "You cant vote"
fi

# Using  || Operator

if [[ $age -ge 18 ]] || [[ $country == "India" ]]
then
        echo "You can vote"
else
        echo "You cant vote"
fi
