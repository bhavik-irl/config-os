linux="linux"
mac="mac"

export WORKSPACE=$HOME/Workspace/config-os
export OS_CONFIGS=$WORKSPACE/$SETUP_OS/configs
export COMMON_CONFIGS=$WORKSPACE/commons/configs
export LOCAL_ENV_FILE=$WORKSPACE/dotlocalEnv
export ASSETS=$WORKSPACE/commons/assets

downloadRepositories() {
  cd ~
  mkdir Workspace
  cd Workspace
  git@github.com:bhavik3210/config-os.git
  git@github.com:bhavik3210/js-playground.git
  git@github.com:bhavik3210/scala-playground.git
  git@github.com:bhavik3210/android-playground.git
  git@github.com:bhavik3210/kotlin-playground.git
  cd ~
}

macLocalEnv() {
echo "# Mac Local Environment
export SETUP_OS=$SETUP_OS
export ANDROID_HOME=\$HOME/Library/Android/Sdk" >> $LOCAL_ENV_FILE
}

linuxLocalEnv() {
echo "# Linux Local Environemnt
export SETUP_OS=$SETUP_OS
export ANDROID_HOME=\$HOME/Android/Sdk" >> $LOCAL_ENV_FILE
}

commonEnv() {
echo "
export PATH=\$PATH:\$ANDROID_HOME/emulator
export PATH=\$PATH:\$ANDROID_HOME/tools
export PATH=\$PATH:\$ANDROID_HOME/tools/bin
export PATH=\$PATH:\$ANDROID_HOME/platform-tools

export GRADLE_USER_HOME=\$HOME/.gradle
" >> $LOCAL_ENV_FILE
}

exception() {
echo "Environment variable SETUP_OS is missing"
echo "Please setup environemtn variable using -> export SETUP_OS=linux OR mac"
}

macLinkConfigFiles() {
  rm $HOME/.zshrc
  ln -sf $COMMON_CONFIGS/zsh/.zshrc $HOME/.zshrc
  ln -sf $COMMON_CONFIGS/zsh/.zprofile $HOME/.zprofile
  ln -sf $COMMON_CONFIGS/zsh/.zshenv $HOME/.zshenv
  ln -sf $COMMON_CONFIGS/zsh/zsh-themes/*.zsh-theme ~/.oh-my-zsh/themes
  ln -sf $COMMON_CONFIGS/zsh/zsh-plugins/*/ ~/.oh-my-zsh/plugins
  cd ~/.oh-my-zsh
  git add . 
  git commit -am "added themes and plugins"

  cd $ASSETS/.fonts 
  cp *.ttf $HOME/Library/Fonts
  cp *.otf $HOME/Library/Fonts
 
  ln -sf $ASSETS/typora/typora-themes/*  ~/Library/Application\ Support/abnerworks.Typora/themes

  ln -sf $OS_CONFIGS/.hushlogin ~/.hushlogin

  ln -sf $LOCAL_ENV_FILE ~/.localEnv
}


linuxLinkConfigFiles() {
  ln -sf $COMMON_CONFIGS/zsh/.zshrc ~/.zshrc
  ln -sf $COMMON_CONFIGS/zsh/.zprofile $HOME/.zprofile
  ln -sf $COMMON_CONFIGS/zsh/.zshenv $HOME/.zshenv
  ln -sf $COMMON_CONFIGS/zsh/zsh-themes/*.zsh-theme ~/.oh-my-zsh/themes
  ln -sf $COMMON_CONFIGS/zsh/zsh-plugins/*/ ~/.oh-my-zsh/plugins
  cd ~/.oh-my-zsh
  git add . 
  git commit -am "added themes and plugins"

  ln -sf $ASSETS/.themes ~/.themes
  ln -sf $ASSETS/.fonts ~/.fonts

  ln -sf $ASSETS/typora/typora-themes/*  ~/.config/Typora/themes
  
  ln -sf $OS_CONFIGS/.xbindkeysrc ~/.xbindkeysrc

  ln -sf $OS_CONFIGS/gnome-launchers/*.desktop ~/.local/share/applications/
  ln -sf $OS_CONFIGS/fontconfig ~/.config

  ln -sf $LOCAL_ENV_FILE ~/.localEnv
 
  ln -sf $ASSETS/.themes/uLaunch-Dark/user-themes ~/.config/ulauncher
}


# Process Begins here
downloadRepositories

case $SETUP_OS in 
  "$linux")
    linuxLocalEnv 
    linuxLinkConfigFiles  
    ;;
  "$mac")
    macLocalEnv
    macLinkConfigFiles 
    ;;
  *) exception ;;
esac


commonEnv

