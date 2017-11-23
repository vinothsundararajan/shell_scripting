#!/bin/bash
#Script to check if else statement.
echo "please enter the path to display."
read path
count=`find * $path | wc -c`

if test $count -eq 0
	then
	echo " $0 : The empty arugment will not be helps to display the total number of arugments"
exit 1
else 
	echo " $0 : The given input is acceptable."

	fi

if [ $3 -gt 0 ]
	then
	echo "The given $3 value is positive"

else

	echo "The given $3 is value is negative"
 	fi
