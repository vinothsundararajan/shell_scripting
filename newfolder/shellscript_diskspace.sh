#!/bin/bash

ip=`ip addr|awk '/ens33/ && /inet/ {gsub(/\/[0-9][0-9]/,""); print $2}'`
mail_user=support@sixthstar.in
HN=`hostname`
disk=`df -hT | grep -w /|awk '{print $6}'`
diskrem=`df -hT | grep -w /|awk '{print $4}'`
df=`df -hT | grep -w /|awk '{print $6}'|tr -d %`

if [[ $df > 40 ]];
	then
	Head=`echo "Dear Sir,">>result.txt`
		space2=`echo "">>result.txt`
	body=`echo "In our $HN server IP  ($ip) our disk space has been reached $disk from overall disk space of our $HN only $diskrem Space remaining So kindly take a priority on this notification and do the needful for deleting unwanted files or accounts from our server, to prevent service interruption.">>result.txt`
		space3=`echo "">>result.txt`
		space4=`echo "">>result.txt`
		space16=`echo "root partition usage">>result.txt`
		space17=`echo "====================">>result.txt`
	a=`df -hT | grep -w / >> result.txt`
		space23=`echo "">>result.txt`
		space26=`echo "Overall Disk usage">>result.txt`
                space25=`echo "====================">>result.txt`
		d=`df -hT >> result.txt`		
		space5=`echo "">>result.txt`
		space6=`echo "">>result.txt`
		space11=`echo "Hard Disk connected">>result.txt`
		space12=`echo "===================">>result.txt`		d=`lsblk | grep sd* >> result.txt`
	results=result.txt
	#echo "`cat results`"
		space7=`echo "">>result.txt`
	aa=`echo "Support team,">>result.txt`
	space27=echo `"We Assure the best of our support & service at all the time.">>result.txt`
		space20=`echo "">>result.txt`
	space28=`echo "Warm Regards,">>result.txt`
	space29=`echo "SixthStar - Support Team">>result.txt`
	space30=`echo "_____________________">>result.txt`
	space21=`echo "">>result.txt`
	space31=`echo "To Ring : +91.9176637399">>result.txt`
	space32=`echo "Email To: support@sixthstar.in">>result.txt`
		space8=`echo "">>result.txt`
		space9=`echo "">>result.txt`

	/usr/bin/mail -s "***Disk Space warning*** $HN : $ip" -r "Disk_Space_alert!!<root@srv.dockersys.com>" $mail_user < $results

> result.txt
fi
#echo "`cat result.txt`" | mail -s '****Disk Space warning $HN ****' support@sixthstar.in"
exit 0

