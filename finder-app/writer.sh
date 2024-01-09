#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Error: Please provide two arguments - full path to a file and a text string to write"
    exit 1
fi

writefile="$1"
writestr="$2"

mkdir -p "$(dirname "$writefile")"

echo "$writestr" > "$writefile"

if [ "$?" -ne 0 ]; then
    echo "Error: Failed to create the file $writefile"
    exit 1
fi

