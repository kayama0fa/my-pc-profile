# -*- shell-script -*-
alias ll='ls -laF --time-style=long-iso'

# Shell Prompt
export PS1="[\t \u@\h:\W]\$ "

export GTAGSLABEL=pygments

# emacs daemon
start_emacs_daemon() {
    if ! emacsclient -e 0 >/dev/null 2>&1; then
        ({
            cd
            emacs --daemon
            cd -
        }) > /dev/null 2>&1
    fi
}

start_emacs_daemon
alias ec="emacsclient -nw"
alias ekill="emacsclient -e '(kill-emacs)'"
alias erestart="emacsclient -e '(kill-emacs)' && start_emacs_daemon"
alias EDITO=ec

