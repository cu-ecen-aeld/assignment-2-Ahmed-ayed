#!/bin/bash
if [ "$#" -ne 2 ]
then
echo " Error: Please provide the path to a directory and a search string "
exit 1
fi
filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]
then
echo " Error: $filesdir is not a directory or does not exist "
exit 1
fi

n_total_files=$(find "$filesdir" -type f | wc -l)
n_files_match=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo " The number of files are $n_total_files and the number of matching lines are $n_files_match "