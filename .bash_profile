# Exports.
export editor=vim
export PS1=$'\[\033[48;5;221;38;5;237m\] \@ \[\033[0m\]:\[\033[01;34m\]\W\[\033[00m\] \$ '
export LOCAL=$HOME/local
export PYTHONPATH=$PYTHONPATH:$LOCAL/code:$HOME/Dropbox/grad/research/code:$LOCAL/code/pylidc
export ETS_TOOLKIT=qt4 # For mayavi?
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$HOME/Dropbox/include
export QT_API=pyside

# Aliases.
alias ipython='ipython --pylab'
alias ipy='ipython'
alias reload-bashrc='source $HOME/.bashrc'
alias rm='rm -i $1'
alias mv='mv -i $1'
alias cp='cp -i $1'
alias mathssh='ssh -X mhancock@henri.math.fsu.edu'
alias mathftp='sftp   mhancock@henri.math.fsu.edu'
alias open='xdg-open $1 > /dev/null 2>&1'
alias grad='cd $HOME/Dropbox/grad'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias cpwd='pwd | xargs echo -n | pbcopy'
alias scratch='cd $LOCAL/code/scratch'

# Do virtualenv stuff if it exists.
#if [ -n "`type -t virtualenv`" ]; then
#    export WORKON_HOME=$HOME/.virtualenvs
#    source /usr/local/bin/virtualenvwrapper_lazy.sh
#fi
