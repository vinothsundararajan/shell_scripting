#!/bin/bash
#Creating menu shell for while and case
while :
 do
 	clear
	echo "===================================="
	echo "       	    MAIN MENU   		  " 
	echo "===================================="
	echo "[1] show Today date/time"
	echo "[2] show files in current directory"
	echo "[3] show calender"
	echo "[4] start editor to write letter"
	echo "[5] Exit/stop"
	echo "------------------------------------"
	echo -n "Select any options "
read myopt
case $myopt in
		1 )echo -n "Today is `date` , Press any key.... "; read ;;
		2 )echo -n "The present working directory `pwd` , Press any key.... "; read ;;
		3 )cal ; echo -n "Press any key...."; read ;;
		4 )"vi";;
		5 )exit 0 ;;
		* )echo "Oops, you should atleast select only choice 1,2,3,4 or 5"; echo "Press any key"; read ;;
	esac	
done

