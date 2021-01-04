# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zshHistFile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

fortune | cowsay -f small

[[ $- != *i* ]] && return
alias ls='ls --color=auto'

autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
export PATH="$PATH:/home/nick/.scripts/"

#tab Completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
setopt COMPLETE_ALIASES
zstyle ':completion::complete:*' gain-privileges
compinit

#Prompts
autoload -Uz promptinit
promptinit
prompt adam2

# Include hidden files in autocomplete:
_comp_options+=(globdots)

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char


dwn() {
	wget -H -p -nd -r -A "$1" "$2"
}

#Aliases

##Command Aliases
alias ytd="youtube-dl"
alias gdl="~/.packeges/gallery-dl-master/bin/gallery-dl"
alias d="disown"
alias v="vim"
alias ls="lsd"
alias w="torsocks w3m"
alias caps="setxkbmap -option ctrl:nocaps"
alias album='ytd -i -f bestaudio -o "%(playlist_index)s-%(title)s.%(ext)s"'
alias playlist='ytd -i -o "%(playlist_index)s-%(title)s.%(ext)s"'
alias rudin="zathura ~/files/books/Math/Rudin.djvu & d"
alias dic="sdcv"
alias je="sdcv -u jmdict-ja-en"
alias ej="sdcv -u jmdict-en-ja"
alias weather="curl wttr.in"
alias z="zathura"
alias mth="cp ~/files/mathTemplate.tex "
alias esy="cp ~/files/Essay.tex "
alias jtx="cp ~/files/japTemplate.tex "
alias vgaSame="xrandr --output LVDS-1 --auto --output VGA-1 --auto --same-as LVDS-1"
alias vgaRight="xrandr --output LVDS-1 --auto --output VGA-1 --auto --right-of LVDS-1"
alias vgaLeft="xrandr --output LVDS-1 --auto --output VGA-1 --auto --left-of LVDS-1"
alias projectOff="xrandr --output VGA-1 --off && xrandr--output HDMI-1 --off"
alias :q="exit"
alias :wq="exit"


##Directory aliases
alias CY="/home/nick/files/NU/currentYear/"
alias WP="~/Pictures/Wallpaper/"
alias BK="~/files/books/"

##Common Files
alias i3c="vim ~/.config/i3/config"
alias qn="vim ~/files/quicknotes"

#Finder
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
bindkey -s '^u' 'xdg-open "$(fzf)"\n'
bindkey -s '^g' 'cd "$(dirname "$(fzf)")"\n'
bindkey -s '^o' 'ranger\n'


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
