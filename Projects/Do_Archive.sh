#!/bin/bash

#$Revvision:001$
#$Wed Mar 21 02 2024 21:03:2024$

 #Variables

BASE=/mnt/d/TempGitTuto
 
 #BASE="C:/Users/Ratnakar/Desktop/TY - Sem 1/DSML"
 DAYS=1
 DEPTH=1
 RUN=0


 #Check if the directory is present or not
if [ ! -d $BASE ]
then
	echo "Directory does not exist: $BASE"
	exit 1
fi

#Create 'archive' folder if not present
if [ ! -d $BASE/archive ]
then
	mkdir $BASE/archive
fi

#Find the list of files larger than 40 MB

for i in `find $BASE -maxdepth $DEPTH -type f -mtime +$DAYS -size +0k`
do
	if [ $RUN -eq 0 ]
	then
		echo "Processing file $i"
		gzip $i || exit 1
		mv $i.gz $BASE/archive || exit 1
	fi
done



