#!/bin/bash

# This is a file content destroyer

echo "This is a file content destroyer"
echo "To make empty any file type the name of the file and hit enter"

read -p ">> " filename

if [[ -n "${filename// /}" ]]; then

	cat /dev/null > "$filename"
	echo "Your file is empty now..."

else
	echo "Type your file name..."

	read -p ">> " filename_2

	if [[ -n "${filename_2// /}"  ]]; then

	: > "$filename_2" # it also make the same thing
	echo "Your file is empty now..."

	else
		echo "Sorry, try again next time."
	fi


fi
