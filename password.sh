#!/bin/bash
#Hello, world==by getting info from access via username and password.
echo "Please provide the username and password to display the message to you"
echo "Enter the username:" 
read name

if [[ $name = vinoth ]]; then
	#statement has been entered here.
	echo "Hello vinoth!"
	echo "Enter the password:"

read password

if [[ $password = p@ssw0rd ]]; then
	#statement has been entered for password.
	echo "Your login has been entered correctly now get login please stay on line"
	echo "Hello there, you are in."
else
	echo "The entered Username or Password is invaild Kindly please check and enter again"

fi
fi
