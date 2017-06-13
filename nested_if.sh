#!/bin/bash
a=Unix
b="maruthu OS"
echo "1.Unix (Sun OS)"
echo "2.RedHat (The maruthu OS specially made for experts)"
echo -n "Select which Operating system would you like to choose:"

read val
if [[ val -eq 1 ]]; then
	#"1.Unix (Sun OS)"
echo "You have chose Unix (Sun OS)."
else
	if [[ val -eq 2 ]]; then
		#experts OS
		echo "2.RedHat,You chose (The maruthu OS specially made for experts)"
	else
		echo "You should select either $a or $b "
	fi
fi

if [[ condition ]]; then
	#statements
fi