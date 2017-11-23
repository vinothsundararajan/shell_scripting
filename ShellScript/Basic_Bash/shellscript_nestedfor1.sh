#!/bin/bash
#The another example for nested for loop.

for n in {20..25}   ##########Outer loop which works as postional paramater to check for inner for loop 
do
	for m in {30..35} #########inner loop.
	do
	echo -n " $m "
	done
echo "" #for empty line

done
