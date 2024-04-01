#!/bin/bash

myVar="Hey Buddy, how are you?"

#how to check length of string.
myVarLength=${#myVar}
echo "Length of the 'myVar' is $myVarLength."

#how to Uppercase the string
echo "Upper case is ${myVar^^}"

#how to Lowercase the string
echo "Lower case is ${myVar,,}"


# To replace something
#syntax: ${myVar/Buddy(oldWord)/Ratnakar(newWord)}

newVar=${myVar/Buddy/Ratnakar}
echo "Newly updated string is $newVar"


#To slice the string
echo "After slice:- ${myVar:1:10}"

	
