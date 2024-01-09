#!/bin/bash

if [ "$#" -ne 2 ]
then
    echo "Error: Please provide two arguments - full path to a file and a text string to write"
    exit 1
fi

writefile=$1
writestr=$2

if [ -z "$writefile" ]
then
    echo "Error: File path not specified"
    exit 1
fi

if [ -z "$writestr" ]
then
    echo "Error: Text string not specified"
    exit 1
fi

mkdir -p "$(dirname "$writefile")"

echo "$writestr" > "$writefile"

if [ $? -ne 0 ]
then
    echo "Error: Failed to create the file $writefile"
    exit 1
fi

echo "File $writefile created with content"
echo "$writestr"
exit 0