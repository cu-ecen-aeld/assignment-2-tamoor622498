#!/bin/bash

if [ "$#" -lt 2 ]
 then
	echo "ERROR: Not enough arguments!"
	echo "Arg 1 must be path to file."
	echo "Arg 2 must be a text string to write"
	exit 1
fi

writefile="$1"
writestr="$2"

mkdir -p "$(dirname $writefile)" && touch "$writefile"
#mkdir -p "${writefile%/*}" && touch "$writefile"

if [ "$?" -ne 0 ]
then
	echo "ERROR: Not able to create directory!"
	exit 1
fi

echo "$writestr" >> "$writefile"
