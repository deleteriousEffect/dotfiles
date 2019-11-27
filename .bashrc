#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Get rid of horrible GUI user/pass dialgue.
unset SSH_ASKPASS

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#-------------------------------------------------------------------------------
# Colored Man Pages!!
#-------------------------------------------------------------------------------

man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

alias l='exa --long --header --time-style=long-iso --only-dirs --sort=modified'
alias ll='exa --long --header --time-style=long-iso --sort=modified --group-directories-first'
alias lla='exa --long --all --header --time-style=long-iso --sort=modified --group-directories-first'

# Enable use of use  with aliases
alias sudo='sudo '

alias git-busy='git log --name-only --pretty=format: | sort | uniq -c | sort -nr'

# color bash prompt
reset=$(tput sgr0)
red=$(tput setaf 1)
blue=$(tput setaf 4)

PS1='\[$red\]\u\[$reset\] \[$blue\]\W\[$reset\]\[$red\] \$\[$reset\] '

# Get rid of horrible GUI user/pass dialgue.
unset SSH_ASKPASS

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    GIT_PROMPT_SHOW_UNTRACKED_FILES=no
    GIT_PROMPT_THEME=Solarized_Ubuntu
    source $HOME/.bash-git-prompt/gitprompt.sh
fi

# ed is the standard editor!
export EDITOR='vim'

# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
