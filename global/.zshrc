# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export WORKSPACE_PATH="~/Documents/workspace"
export PATH_TO_LINUX_CONFIG_FILES='$WORKSPACE_PATH/config-os/linux'
export PATH_TO_DARWIN_CONFIG_FILES='$WORKSPACE_PATH/config-os/darwin'

unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
    . $PATH_TO_LINUX_CONFIG_FILES/linux-commands
elif [[ "$unamestr" == 'Darwin' ]]; then
    . $PATH_TO_DARWIN_CONFIG_FILES/darwin-commands
fi

. ~/$(pwd)/global-commands
. ~/.workenv
