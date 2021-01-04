wallpaperDir='/home/nick/Pictures/Wallpaper/'
files=($wallpaperDir/*)
randompic=`printf "%s\n" "${files[RANDOM % ${#files[@]}]}"`
feh --bg-scale $randompic
