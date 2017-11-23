for i in `ls /usr/share/ | wc -c`
	do
		for j in i; 
		do
			#To check the word count for over all is morethan
			if [[ $j -ge 256 ]]; 
				then
				echo "The expected value is morethan 256"
						else
							echo "The expected value is not met our requirement 256"
						fi			
	echo "Hence the value is $i"
		done
			done
		exit 0
