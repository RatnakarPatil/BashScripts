#!/bin/bash

echo "Provide an option"
echo "a - Print date"
echo "b - list all scripts"
echo "c - check current location"

read choice

case $choice in
	a)date;;
	b)ls;;
	c)pwd;;
	*)echo "Please provide a valid input"
esac

