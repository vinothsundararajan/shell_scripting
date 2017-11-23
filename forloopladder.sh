#!/bin/bash
# There we are going to display the multiplication numbers of table.

if [[ $@ -eq 0 ]]	
	then
	echo "ERROR: You must enter aleast one numeric value after the $0 "
	echo "ELSE the file get's failed to do multiplication"
exit 1
fi


n=$1

for i in 1 2 3 4 5 6 7 8 9 10
do
	echo " $n * $i = `expr $n \* $i`"
done