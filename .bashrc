#MacPorts
export PATH=~/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

source /opt/local/etc/bash_completion.d/git

# Terminal colours (after installing GNU coreutils)
NM="\[\033[0;38m\]" #means no background and white lines
HI="\[\033[0;31m\]" #change this for letter colors
HII="\[\033[0;31m\]" #change this for letter colors
SI="\[\033[0;33m\]" #this is for the current directory
IN="\[\033[0m\]"

#export PS1="$NM[ $HI\u $HII\h $SI\w$NM $(__git_ps1) ] $IN"
export PS1='\u@\h:\w$(__git_ps1 " (%s)") \$ '
export PS1='\[\033[01;32m\]\h\[\033[01;33m\] \w\[\033[31m\]$(__git_ps1 " (%s)") \[\033[01;32m\]$\[\033[00m\] '

#export LS_OPTIONS='--color=auto'
#eval `dircolors ~/.dir_colors`

export EDITOR="emacscli"
export JOOST_SVN="https://svn.theveniceproject.com/repos/venice/"
export MWF_SVN="https://svn.theveniceproject.com/repos/venice/www/mwf/en-US"

# Useful aliases
alias ls='ls $LS_OPTIONS -hF'
alias ll='ls $LS_OPTIONS -lhF'
alias l='ls $LS_OPTIONS -lAhF'
alias cd..="cd .."
alias c="clear"
alias e="exit"
alias ssh="ssh -A"
alias ..="cd .."
alias ...="cd .. && cd .."
alias ....="cd .. && cd .. && cd .."
alias emacscli="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
#export PS1="\n\u@\h: \w\n\$ "
