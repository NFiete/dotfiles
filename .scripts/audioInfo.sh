
data=$(mocp -i)

name=$(echo "$data" | grep 'File')
name=$(echo "$name" | sed 's/^.*\///')
name=$(echo "$name" | sed 's/\..*$//')
state=$(echo "$data" | grep 'State')
if [[ $state == *"PLAY"* ]];then
	state=">"
else
	state="||"
fi

echo "$state $name"
