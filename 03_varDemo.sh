
#!/bin/bash

#Script to show , how to use variables.

age=25
name="Ratnakar"

echo "My name is $name and age is $age."

name="R_Patil"
echo "Upated name is $name."

#Var to store the output of a command

HOSTNAME=$(hostname)
echo "Name of this machine is $HOSTNAME."

path=$(pwd)
echo "Path is $path ."

