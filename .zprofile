
[[ -f ~/.zshrc ]] && . ~/.zshrc

if [ "$(tty)" = "/dev/tty1" ]; then
    pgrep -x i3 || exec startx


fi
#export XMODIFIERS=@im=fcitx
#export GTK_IM_MODULE=fcitx
#export QT_IM_MODULE=fcitx
#fcitx -d -r


# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$PATH:/home/nick/.scripts/"
export NU="$HOME/files/NU/"
export EDITOR="vim"
export TERMINAL="urxvt"
export BROWSER="qutebrowser"
export READER="zathura"
export FILE="ranger"
export BIB="$HOME/files/uni.bib"

