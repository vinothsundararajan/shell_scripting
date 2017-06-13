#!/bin/bash
#testing for if statement

#script to check file is found or not

if  ./$1
	then
	echo -e "\n\nThe file $1 is exist in this directory"
else
	echo -e "\nThe file $1 is not exist in thsi directory"
fi
