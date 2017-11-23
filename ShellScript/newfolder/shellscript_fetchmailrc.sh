#!/bin/bash

echo "defaults" > fetchmailrc
echo "proto pop3" >> fetchmailrc
echo "set logfile “/var/log/fetchmaillog”" >> fetchmailrc
echo "set daemon 120" >> fetchmailrc
echo "" >> fetchmailrc
echo "" >> fetchmailrc
echo "" >> fetchmailrc

for i in `cat voltech.txt`
do
        #i="$k"
        echo "poll webmail.voltechgroup.com" >> fetchmailrc
        echo "proto pop3" >> fetchmailrc
        echo "user \"$i\" " >> fetchmailrc
        echo 'pass "vg@1234"' >> fetchmailrc
        echo "is \"$i\"" >> fetchmailrc
        echo "" >> fetchmailrc
        echo "" >> fetchmailrc
done
exit 0
