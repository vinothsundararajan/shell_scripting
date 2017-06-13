#/bin/bash
#script for the nested if statement with 5 concurrent variables
#There we go..
echo " Enter the path you want to get the word count.."
read path


if [[ $path -lt 100 ]]; then
	#testing the word count
    echo "The given $path count is less than the 100."
    if [[ $path -ge 10 ]]; then
    	#greaterthan
    	echo "The given $path count is more than 9"
    fi
else
	if [[ $path -ge 200 ]]; then
		#greaterthan
	    echo "The given $path value is greater than the 100"
	fi
fi