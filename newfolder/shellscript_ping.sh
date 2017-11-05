#!/bin/bash
#Testing for Ping command in shell programming.
HOST=facebook.com
ping -c 3 $HOST
if [[ "$?" -eq "0" ]];

then

# You must say reachable or unreachable

	echo "$HOST is reachable."

else

	echo "$HOST is unreachable"
fi
