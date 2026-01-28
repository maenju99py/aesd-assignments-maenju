#!/bin/sh

writefile=$1
writestr=$2

if [ -z "$writefile" ] || [ -z "writestr" ]
then
	echo "Error: two arguments where expected"
	exit 1
fi

writedir=$(dirname "$writefile")
mkdir -p "$writedir"

echo "$writestr" > "$writefile"

if [ $? -ne 0 ]
then
	echo "Error: file $writefile could not be created"
	exit 1
fi
