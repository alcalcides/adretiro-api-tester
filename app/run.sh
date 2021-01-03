#!/bin/bash

requests=`cat ./orderOfRequests.txt`;

for request in $requests 
do
    ./requests/$request.sh
    echo $'\10'
done

./app/printAllResponses.sh
diff ./older.txt ./current.txt > ./diffs.txt
