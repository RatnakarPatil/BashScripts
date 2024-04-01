#!/bin/bash

#How to store the key values pairs

declare -A myArray
myArray=( [name]=Ratnakar [age]=18 [city]=Kolhapur)

echo "My name is ${myArray[name]}"
echo "and age is ${myArray[age]}"

