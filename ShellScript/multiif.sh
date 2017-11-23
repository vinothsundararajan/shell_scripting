#
#!/bin/sh
# Script to test if..elif...else
#

if [[ $# -ge 3 ]]; then
	echo "The given value is greater than 1"
elif [[ $# -gt 100 ]]; then
		echo "The given value is greater than 100 "
	elif [[ $# -le 2 ]]; then
			echo "The given value is lesserthan or equal 2"
	else

		if [[ $# -eq 0 ]]; then
			echo "You must pass atlease one numeric arugment next to $0 to verify the test."
		fi
fi