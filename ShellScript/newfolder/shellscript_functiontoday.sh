#!/bin/bash
today()
{
	echo "This exact time of now `date +"%A %d in %B of %Y (%r)"`"
	return
}
today 
sleep 15
today
sleep 10
today

