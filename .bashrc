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

#-------------------------------------------------------------
# Tailoring 'less'
#-------------------------------------------------------------

alias more='less'
export PAGER=less
export LESSCHARSET='latin1'
export LESSOPEN='|/usr/bin/lesspipe.sh %s 2>&-'
                # Use this if lesspipe.sh exists.
                export LESS='-i -N -w  -z-4 -g -e -M -X -F -R -P%t?f%f \
                    :stdin .?pb%pb\%:?lbLine %lb:?bbByte %bb:-...'

                # LESS man page colors (makes Man pages more readable).
                export LESS_TERMCAP_mb=$'\E[01;31m'
                export LESS_TERMCAP_md=$'\E[01;31m'
                export LESS_TERMCAP_me=$'\E[0m'
                export LESS_TERMCAP_se=$'\E[0m'
                export LESS_TERMCAP_so=$'\E[01;44;33m'
                export LESS_TERMCAP_ue=$'\E[0m'
                export LESS_TERMCAP_us=$'\E[01;32m'

#-----------------------------------------------------------
# Aliases
#-----------------------------------------------------------

alias git=hub

alias cons='nmcli -pretty --fields active,ssid,signal,security device wifi list'

alias reconnect='systemctl restart NetworkManager'

alias sudo='sudo '

#-----------------------------------------------------------
# PATH exports
#-----------------------------------------------------------
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
