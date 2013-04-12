set -o vi  # vim FTW!

source /usr/share/autojump/autojump.sh
source /usr/local/bin/virtualenvwrapper.sh
export TERM=xterm-color

export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth
export HISTIGNORE="ls:exit"
export PIP_USE_MIRRORS=1

PATH=$PATH:/opt/vagrant/bin:~/.local/bin

[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

alias ack="ack-grep --before-context=2 --after-context=2"
