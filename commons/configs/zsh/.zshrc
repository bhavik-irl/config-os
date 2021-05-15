
# ███████╗░██████╗██╗░░██╗  ░█████╗░░█████╗░███╗░░██╗███████╗██╗░██████╗░
# ╚════██║██╔════╝██║░░██║  ██╔══██╗██╔══██╗████╗░██║██╔════╝██║██╔════╝░
# ░░███╔═╝╚█████╗░███████║  ██║░░╚═╝██║░░██║██╔██╗██║█████╗░░██║██║░░██╗░
# ██╔══╝░░░╚═══██╗██╔══██║  ██║░░██╗██║░░██║██║╚████║██╔══╝░░██║██║░░╚██╗
# ███████╗██████╔╝██║░░██║  ╚█████╔╝╚█████╔╝██║░╚███║██║░░░░░██║╚██████╔╝
# ╚══════╝╚═════╝░╚═╝░░╚═╝  ░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░░░░╚═╝░╚═════╝░

ZSH_DISABLE_COMPFIX=true

export ZSH=~/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh



# ███████╗███╗░░██╗██╗░░░██╗
# ██╔════╝████╗░██║██║░░░██║
# █████╗░░██╔██╗██║╚██╗░██╔╝
# ██╔══╝░░██║╚████║░╚████╔╝░
# ███████╗██║░╚███║░░╚██╔╝░░
# ╚══════╝╚═╝░░╚══╝░░░╚═╝░░░
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

# ████████╗░█████╗░░█████╗░██╗░░░░░░██████╗
# ╚══██╔══╝██╔══██╗██╔══██╗██║░░░░░██╔════╝
# ░░░██║░░░██║░░██║██║░░██║██║░░░░░╚█████╗░
# ░░░██║░░░██║░░██║██║░░██║██║░░░░░░╚═══██╗
# ░░░██║░░░╚█████╔╝╚█████╔╝███████╗██████╔╝
# ░░░╚═╝░░░░╚════╝░░╚════╝░╚══════╝╚═════╝░
# Author: https://www.growingwiththeweb.com/2018/01/slow-nvm-init.html
# Defer initialization of nvm until nvm, node or a node-dependent command is
# run. Ensure this block is only run once if .bashrc gets sourced multiple times
# by checking whether __init_nvm is a function.
if [ -s "$HOME/.nvm/nvm.sh" ] && [ ! "$(type __init_nvm)" = function ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
  declare -a __node_commands=('nvm' 'node' 'npm' 'yarn' 'gulp' 'grunt' 'webpack')
  function __init_nvm() {
    for i in "${__node_commands[@]}"; do unalias $i; done
    . "$NVM_DIR"/nvm.sh
    unset __node_commands
    unset -f __init_nvm
  }
  for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
fi

# Not using below NVM init because it slows down shell intialization for each shell env
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# Don't need sdkman and nvm all the time so no need to run it in every shell session
alias runSdkman='[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"'
alias runNvm='export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"'
