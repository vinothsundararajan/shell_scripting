#!/bin/bash
# Here we need to check the total kill by process name or process id

if [ $# -lt 2 ]
	then
	echo "Usage $0 signalnumber PID need application"
	exit 0
elif [ $# -ge 2 ]
	 then
	 case $1 in
	 1) echo "Sending SINGUP signal number"
		kill -SINGUP $2;;
	 2) echo "Sending SIGINT singal number"
	 	kill -SIGINT $2;;
	 3) echo "Sending SIGQUIT singal number"
	 	kill -SIGQUIT $2;;
	 9) echo "Sending SIGKILL singal number"
	 	kill -SIGKILL $2;;
	 *) echo "Sending $1 is not processed";;	 		 	
	 esac
fi