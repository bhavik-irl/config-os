# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export PATH_TO_CONFIGS=~/Documents/workspace/config-os/configurations

unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
    export WORKSPACE_PATH=~/Documents/workspace
    . $PATH_TO_CONFIGS/linux-aliases
elif [[ "$unamestr" == 'Darwin' ]]; then
    export WORKSPACE_PATH=~/Documents/workspace
    . $PATH_TO_CONFIGS/mac-aliases
fi

. $PATH_TO_CONFIGS/nix-aliases
. ~/.workenv



###NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

###GitEye
export GIT_SSH=/usr/bin/ssh

##addworksshkey