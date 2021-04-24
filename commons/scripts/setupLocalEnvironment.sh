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
export ANDROID_HOME=\$HOME/Library/Android/sdk" >> $LOCAL_ENV_FILE
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
export PATH=\$PATH:\$ANDROID_HOME/bundle-tool

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
  ln -sf $COMMON_CONFIGS/zsh/zsh-themes/*.zsh-theme $HOME/.oh-my-zsh/themes
  ln -sf $COMMON_CONFIGS/zsh/zsh-plugins/*/ $HOME/.oh-my-zsh/plugins
  cd $HOME/.oh-my-zsh
  git add . 
  git commit -am "added themes and plugins"
  cd

  cd $ASSETS/.fonts 
  cp *.ttf $HOME/Library/Fonts
  cp *.otf $HOME/Library/Fonts
  cd
 
  ln -sf $ASSETS/typora/typora-themes/*  $HOME/Library/Application\ Support/abnerworks.Typora/themes

  ln -sf $OS_CONFIGS/.hushlogin $HOME/.hushlogin

  ln -sf $LOCAL_ENV_FILE $HOME/.localEnv
}


linuxLinkConfigFiles() {
  ln -sf $COMMON_CONFIGS/zsh/.zshrc $HOME/.zshrc
  ln -sf $COMMON_CONFIGS/zsh/zsh-themes/*.zsh-theme $HOME/.oh-my-zsh/themes
  ln -sf $COMMON_CONFIGS/zsh/zsh-plugins/*/ $HOME/.oh-my-zsh/plugins
  cd $HOME/.oh-my-zsh
  git add . 
  git commit -am "added themes and plugins"
  cd

  ln -sf $ASSETS/.themes/ $HOME/.themes
  ln -sf $ASSETS/.fonts/ $HOME/.fonts

  ln -sf $ASSETS/typora/typora-themes/*  $HOME/.config/Typora/themes

  ln -sf $OS_CONFIGS/gnome-launchers/*.desktop $HOME/.local/share/applications/
  ln -sf $OS_CONFIGS/fontconfig $HOME/.config

  ln -sf $LOCAL_ENV_FILE $HOME/.localEnv
 
  ln -sf $ASSETS/.themes/uLaunch-Dark/user-themes $HOME/.config/ulauncher
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

