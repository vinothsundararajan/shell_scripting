#!/bin/bash

echo "There we are going to print $0 even numbers"

a=`cat -n file.txt | awk '{print $1}' >> grep.txt`


for i in `cat grep.txt`

do

b=`expr $i % 2`

if [ $b == 0 ];
	then
echo "$i" >> output.txt
fi
done
