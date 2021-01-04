#!/bin/bash


url="$1"

links=$(lynx -dump "$url")
links=$(echo "$links" | sed '0,/Hidden links/d')
links=$(echo "$links" | sed 's/.*\. //')
links=$(echo "$links" | sed '/\.html/d')
while read line;
do
	youtube-dl "$line"
done <<< "$links"
