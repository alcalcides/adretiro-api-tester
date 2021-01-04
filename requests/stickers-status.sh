#!/bin/bash

server=$("./app/getURL.sh")
appGET="./app/requestGET.sh"
resource="stickers-status"

output="./answers/$resource"
uri="$server/$resource"

echo "request = get $uri"
eval "$appGET $uri $output"
