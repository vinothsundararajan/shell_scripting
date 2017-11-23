#!/bin/bash
#This program which helps to generate the chess board

for (( i = 1; i <= 8; i++ )); 
	do
	for (( j = 1; j <= 8; j++ ));
	 do
		#To verfiy the difference.
		add=`expr $i + $j` 
		tot=`expr $add % 2`
if [[ $tot -eq 0 ]]; 
	then
	#To print the color for space (Instead of)
echo -e -n "\033[47m\033[2m  "
else
echo -e -n "\033[40m  "	
fi
	done
echo -e -n "\033[40m" ## to set background color
echo "" #empty line to start second row"
done
