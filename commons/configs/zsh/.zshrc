# export PATH=$HOME/bin:/usr/local/bin:$PATH
ZSH_DISABLE_COMPFIX=true

export ZSH=~/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

###Added by User
export WORKSPACE_PATH=~/Workspace
export PATH_TO_CONFIGS=~/Workspace/config-os/configurations

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

###NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

###GitEye
export GIT_SSH=/usr/bin/ssh

. ~/.workenv
. $PATH_TO_CONFIGS/nix-aliases
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!



export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/bhavik.patel/.sdkman"
[[ -s "/Users/bhavik.patel/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/bhavik.patel/.sdkman/bin/sdkman-init.sh"
