#!/bin/bash

#Arrays

myArray=( 1 2 11 50.6 Hello)

echo "Value at 0th index is ${myArray[0]}"
echo "Value at 3rd index is ${myArray[3]}"
echo "Value at 4th index is ${myArray[4]}"

echo "All values in the array are ${myArray[*]}"


#How to find length of array
echo "Length of an array is ${#myArray[*]}"

#How to print rages of arrays
#eg. Print element from 2 to 4 (means total 3 elements
# syntax: ${myArray[*]:2(start):3(3 elements)}

echo "Printing 3 elements from index 2:- ${myArray[*]:2:3}"


#Updating our array

myArray+=(New 30 20 "Updated Array" 9.2)
echo "Values of new array are: ${myArray[*]}"



