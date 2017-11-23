#!/bin/bash
#different type of casestatement to check
#file extenstions and filter

for file in `ls`
do
	ext=${file##*\.}
case $ext in
	c) echo "$file: C source file";;
	o) echo "$file: Object file";;
	sh) echo "$file: Shellscripting file";;
	txt) echo "$file: txt file";;
	*) echo "$file: the file is not processed";;
esac
done
