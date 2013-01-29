set -o vi  # vim FTW!

source /usr/share/autojump/autojump.sh
source /usr/local/bin/virtualenvwrapper.sh
export TERM=xterm-color

aromanovich_virtualenv() {
  if [ x$VIRTUAL_ENV != x ]; then
    if [[ $VIRTUAL_ENV == *.virtualenvs/* ]]; then
      ENV_NAME=`basename "${VIRTUAL_ENV}"`
    else
      folder=`dirname "${VIRTUAL_ENV}"`
      ENV_NAME=`basename "$folder"`
    fi
    echo -n $' \033[37mworkon \033[1;31m'
    echo -n $ENV_NAME
    echo -n $'\033[00m'
  fi
}

aromanovich_vcprompt() {
  vcprompt -f $' on \033[1;34m%n\033[00m:\033[36m%[unknown]b\033[32m'
}

AROMANOVICH_DEFAULT_COLOR="[00m"
AROMANOVICH_COLOR1="[1;34m"
export AROMANOVICH_BASEPROMPT='\n\e${AROMANOVICH_DEFAULT_COLOR}\u \
\e${AROMANOVICH_DEFAULT_COLOR}at \e${AROMANOVICH_COLOR1}\h \
\e${AROMANOVICH_DEFAULT_COLOR}in \e${AROMANOVICH_COLOR1}\w\
\e${AROMANOVICH_DEFAULT_COLOR}`aromanovich_vcprompt`\
`aromanovich_virtualenv`\
\e${AROMANOVICH_DEFAULT_COLOR}'
export PS1="\[\033[G\]${AROMANOVICH_BASEPROMPT}\n$ "

export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth
export HISTIGNORE="ls:exit"

export VIRTUAL_ENV_DISABLE_PROMPT=1
export PIP_USE_MIRRORS=1

PATH=$PATH:/opt/vagrant/bin

[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc
