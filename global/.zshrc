# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

WORKSPACE_PATH="~/Documents/workspace"

unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
    . ~/$(pwd)linux-commands
elif [[ "$unamestr" == 'Darwin' ]]; then
    . ~/$(pwd)/darwin-commands
fi

. ~/$(pwd)/global-commands
. ~/.workenv
