# -*- shell-script -*-
#
# Note [change shell]:
#   /usr/local/bin/bash
#   1. add path /etc/shells
#   2. chsh -s /usr/local/bin/bash
#   3. re-open term

if [ "$(uname)" == "Darwin" ]; then
    os="Mac"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    os="Linux"
else
    os="Other"
fi

if [ "${os}" == "Mac" ]; then
    # for MacOS, brew coreutils.
    gnubin=/usr/local/opt/coreutils/libexec/gnubin
    if [ -d ${gnubin} ]; then
        export PATH=${gnubin}:${PATH}
    fi
    gnuman=/usr/local/opt/coreutils/libexec/gnuman
    if [ -d ${gnuman} ]; then
        export MANPATH=${gnuman}:${MANPATH}
    fi
    export HOMEBREW_CASK_OPTS="--appdir=/Applications"
fi

