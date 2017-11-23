#!/bin/bash
#multiplication by using Tables
echo "Enter the number you want to know the table"
read value
for i in 1 2 3 4 5 6 7 8 9 10
do
	echo "$value * $i = `expr $value \* $i`"

done
