#!/bin/bash

# Feed script a url.
# If an image, it will view in feh,
# if a video or gif, it will view in mpv
# if a music file or pdf, it will download,
# otherwise it opens link in browser.

scihub="http://sci-hub.tw/"

# List of sites that will be opened in mpv.
vidsites="youtube.com
	\|hooktube.com
	\|bitchute.com
	"

# List of academic sites whose pdfs can be dled via sci-hub.
academic="springer.com"

ext="${1##*.}"
mpvFiles="mkv mp4 gif webm"
fehFiles="png jpg jpeg jpe"
wgetFiles="mp3 flac opus mp3?source=feed pdf"

if echo $fehFiles | grep -w $ext > /dev/null; then
	setsid nohup feh "$1" >/dev/null & disown
elif echo $mpvFiles | grep -w $ext > /dev/null; then
	setsid nohup mpv --loop -quiet "$1" > /dev/null & disown
elif echo $wgetFiles | grep -w $ext > /dev/null; then
	wget "$1" >/dev/null & disown
elif echo "$@" | grep "$vidsites">/dev/null; then
	setsid nohup mpv -quiet "$1" > /dev/null & disown
elif echo "$@" | grep "$academic">/dev/null; then
	curl -sO "$(curl -s "$scihub$*" | grep -Po "(?<=location.href=').+.pdf")" & disown
else
	setsid nohup chromium "$1" 2>/dev/null & disown
fi
