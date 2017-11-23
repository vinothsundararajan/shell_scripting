#!/bin/bash
# here we are going to work with case statements

# -z is null for string but does exists
# -n is not null for string but also does exists

if [ -z $1 ]
	then
rental="****UNKNOWN VEHICLE****"
elif [ -n $1 ]
 then
rental=$1
fi
case $rental in
	"car" ) echo "The $rental Rs 20 for per k/m";;
	"bus" ) echo "The $rental Rs 10 for per k/m";;
	"bike") echo "The $rental Rs 5 for per k/m" ;;
	*) echo "Sorry, $rental It's not selected wrong vehicle";;
esac