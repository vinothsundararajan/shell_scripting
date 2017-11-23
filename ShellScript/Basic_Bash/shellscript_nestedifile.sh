#!/bin/bash
#The one example of nested if statement we can see here

echo "1. Linux Ubuntu 17.10 "
echo "2. Unix BSD  "
echo "What operating System which you want to install on your system kindly select 1 or 2 on above list"
read os

if [ $os == 1 ]
then
	echo "Congratz you have choosen the 1. Linux Ubuntu 17.10"

else
	if [ $os == 2 ]
	then
		echo " Congratz you have choosen the 2. Unix BSD"
	else
		echo " why you don't like UNIX BDS and Linux UBUNTU"
	fi
fi
    
