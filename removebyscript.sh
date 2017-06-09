#!/bin/bash
#removing file by using if statement.

if rm $1

then
    
     echo -e "\n\nThe file $1 has been removed" 

	#statements if file is not found or invaild.
else
     echo -e "\n\nThe file $1 is not removed"
fi

