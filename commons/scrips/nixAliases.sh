# unix commands
alias ll='ls -la'
alias ..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias ghistory='git log --graph --pretty=oneline --abbrev-commit'
alias ghistorypretty='git log --pretty=oneline'

# files navigation
alias workspace='cd $WORKSPACE_PATH'
alias configos='cd $WORKSPACE_PATH/config-os'
alias notes='cd $WORKSPACE_PATH/notes'
alias reactjs='cd $WORKSPACE_PATH/js-playground'
alias nodejs='cd $WORKSPACE_PATH/js-playground'
alias android='cd $WORKSPACE_PATH/android-playground'
alias kotlinWorkspace='cd $WORKSPACE_PATH/kotlin-playground'
alias scalaWorkspace='cd $WORKSPACE_PATH/scala-playground'

alias addpersonalsshkey='ssh-add -D && ssh-add ~/.ssh/id_rsa_personal'
alias addworksshkey='ssh-add -D && ssh-add ~/.ssh/id_rsa_work'