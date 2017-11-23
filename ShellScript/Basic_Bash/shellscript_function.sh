#!/bin/bash
# Here, we are going see about functions,

today()
{
echo "Today is `date +"%A %d in %B of %Y (%r)"`"
echo "$LOGONNAME"
}
today
#sleep 5

if [ $1 -ge 5 ]
then
echo "The password output is lesser than 5"
else
echo "The password output is greater than 5"
today
if

