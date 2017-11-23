#!/bin/bash
#removing file by using if statement.
#The $1 is the location of Linux shell, like $0 $1 $2 like wise where as my script act us [./removebyscript.sh file] = [./removebyscript.sh=$0  file=$1]



if rm $1
# so there $1 is calling file
then
    
     echo -e "\n\nThe file $1 has been removed" 

	#statements if file is not found or invaild.
else
     echo -e "\n\nThe file $1 is not removed"
fi

