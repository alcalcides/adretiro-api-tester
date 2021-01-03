#!/bin/bash

mv ./current.txt ./older.txt
echo "All responses" > ./current.txt
echo $'\10' >> ./current.txt

files=`cat ./orderOfRequests.txt`
for eachfile in $files 
do
	echo /$eachfile >> ./current.txt
	cat ./answers/$eachfile.out >> ./current.txt
	echo $'\10' >> ./current.txt
	echo $'\10' >> ./current.txt
done

echo "done"

