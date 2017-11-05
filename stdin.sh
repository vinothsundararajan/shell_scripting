#!/bin/bash
#creating standard input and output also to redirect the error.

if [ $# -ne 2 ]
	then
	echo "ERROR: Value must be supply less then 2"
	echo "Usage: $1 and $2 only "
	exit 1
fi
ans=`expr $1 + $2`
echo "sum of $1 and $2 is $ans"
