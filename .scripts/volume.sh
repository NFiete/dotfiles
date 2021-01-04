#!/bin/bash
amixer -D pulse sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }'
awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master)
