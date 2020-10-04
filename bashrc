#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias l='ls -l --color=auto'
alias lla='ls -la --color=auto'
alias lar='ls -laR --color=auto'
alias u='ufetch'
alias cpu-freqs='watch -n 1 grep \"cpu MHz\" /proc/cpuinfo'
alias brightness='cat /sys/class/backlight/intel_backlight/brightness'
alias reddit='rtv'
alias pdf='devour zathura'
alias p='devour zathura'
alias vlc='vlc'
alias f='devour pcmanfm'
alias celluloid='devour celluloid'
alias mfind='find $(pwd) -name'
alias changeBrightness='sudo vim /sys/class/backlight/intel_backlight/brightness'
alias wifi-list='nmcli device wifi list'
alias gup='git pull --rebase; git submodule --quiet sync; git submodule update --init --recursive'

PS1='[\u@\h \W]\$ '

export TERM=xterm
export VISUAL=vim
export EDITOR="$VISUAL"

#if [ "$TERM" != "linux" ]; then
#    source ~/Documents/pureline/pureline ~/.pureline.conf
#fi

# swap escape and shift lock key
/usr/bin/setxkbmap -layout be -option caps:swapescape
