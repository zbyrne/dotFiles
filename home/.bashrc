alias ls='ls --color'
alias 'll'='ls -lh'
alias la='ls -Alh'
alias et='emacs -nw'
alias rc='echo $?'
alias less='less -R'
alias 'glo'='git log --oneline'
alias 'vol'='alsamixer'
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

export PS1='\[\033[1;32m\]\u@\h:\[\033[1;31m\]\w\$ \[\033[00m\]'
