#!/bin/bash

sum ()
{
	local a=$1
	local b=$2
	let sum=a+b
	echo "The sum of $a and $b is $sum"
}

sum 10 12
