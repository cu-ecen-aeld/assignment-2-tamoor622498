#!/bin/bash

if [ "$#" -lt 2 ]
 then
	echo "ERROR: Not enough arguments!"
	echo "Arg 1 must be path to search."
	echo "Arg 2 must be a text string to search."
	exit 1
fi

filedir="$1"
searchstr="$2"

if [ ! -d "$1" ] 
then
    echo "ERROR: $1 is not a valid dir." 
fi

numFiles=$(find "$filedir" -type f | wc -l)
numMatches=$(grep -oR "$searchstr" $filedir | wc -l)

echo "The number of files are $numFiles and the number of matching lines are $numMatches"
