
# ZSH Config

ZSH_DISABLE_COMPFIX=true

export ZSH=~/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh


# ENV
export WORKSPACE_PATH=$HOME/Workspace
export CONFIG_OS=$WORKSPACE_PATH/config-os

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export ZPROFILE="ZPROFILE LOADED"

. $HOME/.localEnv
. $CONFIG_OS/commons/configs/nixAliases
. $CONFIG_OS/$SETUP_OS/configs/nixAliases

# Not using below NVM init because it slows down shell intialization for each shell env
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"