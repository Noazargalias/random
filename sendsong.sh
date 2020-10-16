#!/bin/bash

read -p "Enter songname: " songname
read -p "Enter your friend's name (as displayed in contacts): " fullname
while IFS= read -r line
do
	 osascript -e 'tell application "Messages" to send "'"$line"'" to buddy "'"$fullname"'"'
	if [ $? -eq 0 ]; then
		echo "Message sent!"
	else 
		echo "Message failed."
	fi	
done < "$songname".txt

