#!/bin/bash
#echo "Enter the number to check calculation value.."
#read $2
case $2 in
		"+" ) echo "The addition of $1 and $3 is `expr $1 + $3`.";;
			"-"	) echo "The subtraction of $1 and $3 is `expr $1 - $3`.";;
				"x" ) echo "The multiplication of $1 and $3 is `expr $1 \* $3`.";;
					"/" ) echo "The divison of $1 and $3 is `expr $1 / $3`";;
						*) echo "Sorry you have entred invaild opertor to verify you request";;
					esac

