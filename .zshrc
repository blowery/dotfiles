PROMPT="%n@%m%~> "; export PROMPT; 
PATH=~/bin:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin; export PATH;
export MANPATH=/opt/local/share/man:$MANPATH
autoload -U compinit
compinit
export HISTSIZE=2000
export SAVEHIST=2000
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_dups
setopt hist_ignore_space
setopt append_history
setopt extended_history
setopt autocd
setopt extendedglob
setopt nocorrectall

export CLICOLOR=1
export LSCOLORS=DxExcxdxBxegedabagacad
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# cd by .. or ... or ... or mv file ..../.
alias '..'='cd ..'
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'

alias bender="sudo /ask/bloglines/current/code/httpd/bin/benderctl -k restart"
alias switch_to_trunk="svn switch svn://bldev/bloglines/trunk ."
alias switch_to_branch="svn switch svn://bldev/bloglines/branches/"
alias comeup="cd ~/work/bl/trunk && svn up && scons -j 2 contentinstall && cd $PWD"
alias hog_cpu="top -o cpu -O vsize"
alias hog_mem="top -o vsize -O rsize"
alias svnst="svn st"
alias svnci="svn ci"
alias svnup="svn up"
alias jump="ssh -tAXY jump01oak.io.askjeeves.info ssh -AX"