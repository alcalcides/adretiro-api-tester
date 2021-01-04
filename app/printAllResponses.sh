#!/bin/bash

mv ./current.txt ./older.txt
echo "All responses" > ./current.txt
echo "" >> ./current.txt

files=`cat ./orderOfRequests.txt`
for eachfile in $files 
do
	echo /$eachfile >> ./current.txt
	cat ./answers/$eachfile.out >> ./current.txt
	echo "" >> ./current.txt
	echo "" >> ./current.txt
done

echo "done"

