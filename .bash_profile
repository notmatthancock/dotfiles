# Exports.
export editor=vim
export PS1=$'\[\033[01;32m\]\@\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\] \$ '
export LOCAL=$HOME/local
export PYTHONPATH=$PYTHONPATH:$LOCAL/code:$HOME/Dropbox/grad/research/code:$LOCAL/code/pylidc:$LOCAL/code/pyresume:$LOCAL/code/smoothfuncs/
export ETS_TOOLKIT=qt4 # For mayavi?
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$HOME/Dropbox/include

# Aliases.
alias ipython='ipython --pylab'
alias reload-bashrc='source $HOME/.bashrc'
alias rm='rm -i $1'
alias mathssh='ssh -X mhancock@henri.math.fsu.edu'
alias mathftp='sftp   mhancock@henri.math.fsu.edu'
alias open='xdg-open $1 > /dev/null 2>&1'
alias grad='cd $HOME/Dropbox/grad'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias cpwd='pwd | pbcopy'
alias scratch='cd $LOCAL/code/scratch'

# Do virtualenv stuff if it exists.
if [ -n "`type -t virtualenv`" ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper_lazy.sh
fi
