#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# color bash prompt
#PS1='[\u@\h \W]\$ '  # To leave the default one
#DO NOT USE RAW ESCAPES, USE TPUT
reset=$(tput sgr0)
red=$(tput setaf 1)
blue=$(tput setaf 4)
green=$(tput setaf 2)

PS1='\[$red\]\u\[$reset\] \[$blue\]\w\[$reset\] \[$red\]\$ \[$reset\]\[$green\] '

#-----------------------------------------------------------
# Aliases
#-----------------------------------------------------------

alias git=hub

alias cons='nmcli -pretty --fields active,ssid,signal,security device wifi list'

alias reconnect='systemctl restart NetworkManager'

alias sudo='sudo '

alias anyonethere='ping -c3 www.google.com'

#-----------------------------------------------------------
# PATH exports
#-----------------------------------------------------------
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
PATH="$PATH:/home/hayley/flow/"
export PATH=$HOME/local/bin:$PATH
