#!/bin/bash

# Monitoring the free DISK space

#FU --> FIleSystem Utilization
FU=$(df -h | egrep -v "Filesystem|tmpfs|none" | grep "drvfs" | grep "/mnt/d" | awk '{print $5}' | tr -d %)

TO="ratnakarpatil2003@gmail.com"

if [[ $FU -ge 10 ]]
then
	echo "WARNING !!, Disk Space [D] is very low - $FU %"
	mail -s "Disk Space Alert !!" $TO 
else
	echo "All good !! Enough Space is available."
fi

