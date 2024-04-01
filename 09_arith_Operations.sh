#!.bin/bash

#Maths Calculations

x=10
y=2

mul=$x*$y
echo "$mul"

#proper way

let mult=$x*$y
echo "The multiplication is: $mult"

let summ=$x+$y
echo "The sum is : $sum"

#Using double brackets

echo "Substarction is $(($x-$y))"

