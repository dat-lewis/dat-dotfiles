# debian .bashrc

# terminal settings
export PS1='\[\033[01;31m\]\u\[\033[01;33m\]@\[\033[01;36m\]\h \[\033[01;33m\]\W \[\033[01;35m\]\$ \[\033[00m\]'

# color settings
export CLICOLOR=1
eval `dircolors .dircolors`

# history settings
export HISTFILESIZE=1000
export HISTSIZE=1000
export HISTCONTROL="ignoreboth"

# editor settings
export EDITOR="vim"

# aliases
alias ls='ls --color=auto'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
alias grep='grep --colour=auto'

# man page color
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# extract files with easy alias
extract ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       rar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' can't be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# setting for the new UTF-8 terminal in os x
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8