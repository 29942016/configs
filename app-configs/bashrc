# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Macbook Command, Fn and Control and Right-Click remapping
xmodmap -e "keycode 108 = Pointer_Button2"
xmodmap -e "keycode 134 = Pointer_Button3"
xmodmap -e "keycode 98 = asciitilde"
xmodmap -e "keycode 94 = grave asciitilde"
xkbset m

# General
alias l="ls -al --color"
alias p="pwd"
# Python Studio binary
alias pycharm="/opt/pycharm-community-2016.1.2/bin/pycharm.sh"
# Android Studio binary
alias android-studio="/home/Oliver/android-development/android-studio/bin/studio.sh"
# IRC Client
alias irc=irssi
# Laptop battery hack
alias bat="upower -d | grep -m 1 percentage | grep -Po '[0-9][0-9]*%'"
# Reload bashrc config
alias source="source ~/.bashrc; clear; echo -e '.bashrc reloaded\n'"
# Rotate by 13 cipher
alias rot13="tr '[A-Za-z]' '[N-ZA-Mn-za-m]'"

# PHP function debugging
function pcall() 
{
 /usr/bin/php -r "require 'transd-lib.php';$@;"
}

# ASCII Symbols
#☠ 💻 ☢ ☢ ☮ ★ ♛ ⚝ ⚒ 

# Prompt 
PS1="\[\033[38;5;13m\] ⚝ \[\033[38;5;27m\][$(bat) - \u]\[$(tput sgr0)\]\[\033[38;5;10m\] [\W] \[$(tput sgr0)\]"

# TMUX Default on launch
#[[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
