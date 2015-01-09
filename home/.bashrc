alias ls='ls --color'
alias 'll'='ls -lh'
alias la='ls -Alh'
alias et='emacs -nw'
alias rc='echo $?'
alias less='less -R'
alias 'glo'='git log --oneline'
alias 'glr'='git log -p --reverse `git merge-base HEAD @{u}`..HEAD'
alias 'vol'='alsamixer'
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

colour_rc () {
    RC="$?"
    if [ $RC != 0 ]; then
        echo "\[\e[31m\]$RC\[\e[0m\]"
    else
        echo "\[\e[32m\]$RC\[\e[0m\]"
    fi
}

export PROMPT_COMMAND='PS1="[$(colour_rc)]\[\e[1;32m\]\u@\h:\[\e[1;31m\]\w\$ \[\e[0m\]"'
