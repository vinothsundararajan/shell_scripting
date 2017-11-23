#!/bin/bash

######### Edit here ##########
#changelog1.1
_mail_user=support@xyz.com # Set this to your email id to receive alerts on mail queue
_limit="2" # Set the limit here

##############################
logdate=`date +%d-%m-%Y-%H-%M-%S`
clear;
_result="/tmp/mailqueue/eximq$logdate.txt"
_queue="`/usr/sbin/exim -bpc`"
_summary=$(/usr/sbin/exim -bp | /usr/sbin/exiqsumm)

if [ "$_queue" -ge "$_limit" ]
then
	echo "Current queue is: $_queue" > $_result
	echo "Summary of Mail queue" >> $_result
	echo "$_summary" >> $_result
	/usr/bin/mail -s "Number of mails on `hostname` Makkal-TV Server : $_queue" -r "Mail_Queue_Alert!!<owncpanelsampleid@xyz.com>" $_mail_user < $_result
	cat $_result
fi
