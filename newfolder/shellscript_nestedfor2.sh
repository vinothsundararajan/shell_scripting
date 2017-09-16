#!/bin/bash
#Nested for loop to check word count of all file lines.
#To check certain number word count, For that here we are using the wc
#path=$HOME/Documents/shellscript/shell_scripts/*.sh

for file in `ls *sh`
do
	for pass in $file
	do
	echo "The number of lines in this file $pass = `cat $pass | wc -l`"
done
done

