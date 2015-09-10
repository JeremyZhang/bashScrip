#!/bin/bash
#Program:
#	use ping command to check the network's PC state
#20150910 Jeremy First release

netid="192.168.1."
for pcid in $(seq 1 254)
do
	ping -c 1 -w 1 ${netid}${pcid} &>>/dev/null && result=1 || result=0
	if [ "$result" -eq 1 ];then
		echo "Serve ${netid}${pcid} is UP!"
	else 
		echo "Serve ${netid}${pcid} is Down!"
	fi	
done
