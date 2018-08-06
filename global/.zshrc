# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export PATH_TO_CONFIG_OS=~/Documents/workspace/config-os
export PATH_TO_LINUX_CONFIG_FILES=$PATH_TO_CONFIG_OS/linux
export PATH_TO_DARWIN_CONFIG_FILES=$PATH_TO_CONFIG_OS/darwin

export WORKSPACE_PATH=$HOME/Documents/workspace

unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
    . $PATH_TO_LINUX_CONFIG_FILES/linux-commands
elif [[ "$unamestr" == 'Darwin' ]]; then
    . $PATH_TO_DARWIN_CONFIG_FILES/darwin-commands
fi

. $PATH_TO_CONFIG_OS/global/global-commands
. ~/.workenv
