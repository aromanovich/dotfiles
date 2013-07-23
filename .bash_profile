set -o vi  # vim FTW!
shopt -s cdspell
stty -ixon

source /usr/share/autojump/autojump.sh
source /usr/local/bin/virtualenvwrapper.sh
export TERM=xterm-color

export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth
export HISTIGNORE="ls:exit"
shopt -s histappend

export PIP_USE_MIRRORS=1
export PYTHONDONTWRITEBYTECODE=1
export VIRTUALENV_USE_DISTRIBUTE=1

PATH=$PATH:/opt/vagrant/bin:~/.local/bin

[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

alias ack="ack-grep --before-context=2 --after-context=2"
alias mkdir="mkdir -p"
alias e="gvim"

if [ -e ~/.last-venv ]; then
  workon `cat ~/.last-venv`
fi
