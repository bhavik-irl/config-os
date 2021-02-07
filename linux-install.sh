sudo apt update -y
sudo apt upgrade -y

# Add Repositories
sudo add-apt-repository -y ppa:papirus/papirus
sudo add-apt-repository -y ppa:agornostal/ulauncher

sudo apt-get update
sudo apt-get install 

# Update Repos
sudo apt update -y
sudo apt upgrade -y

# Install 
sudo apt-get install -y unzip htop pdftk curl papirus-icon-theme wget gpick p7zip-full fonts-powerline build-essential git gimp zsh flameshot ulauncher redis-tools calibre tree qemu-kvm timeshift gnome-shell-extensions gnome-tweaks code

# AWS setup
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

# Node JS
mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic test"
sudo apt update
sudo apt install docker-ce

# Typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get install typora

# Java JDK 8
# unzip tar to /usr/lib/jvm dir
# export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_261
# export PATH=$PATH:$JAVA_HOME/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install v14.15.3

npm install -g @bitwarden/cli

# Docker setup

#Various 
sudo adduser bhavik kvm
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s $(which zsh)

# Remove Downloaded files
rm awscli-bundle.zip
rm -rf awscli-bundle

echo "Software
- Standard Notes
- Slack
- Android Studio
- Webstorm
- Intellij Idea
- Visual studio
- uLauncher (https://ulauncher.io/) cp `dark` theme to ~/.config/ulauncher/user-themes/    
"

echo "Gnome Extensions
- Dash to Dock  
- Dash to Panel
- Remove Alt+Tab Delay v2
- User Themes
- Sound Input & Output Device Chooser
- Bluetooth quick connect 
- gTile (for Ultrawide Monitors)
- Caffeine 
- Impatience 
- Steal My Focus 
- Toggle Night Light
- Night Light Slider
"

echo "\n\n"


# Linux Configuration
# usr/share/applications

export WORKSPACE=~/Workspace/config-os
export CONFIGS=$WORKSPACE/configurations

ln -sf $CONFIGS/.xbindkeysrc ~/.xbindkeysrc
ln -sf $CONFIGS/.zshrc ~/.zshrc
ln -sf $WORKSPACE/.themes ~/.themes
ln -sf $WORKSPACE/.fonts ~/.fonts
ln -sf $WORKSPACE/configurations/gnome-launchers/*.desktop ~/.local/share/applications 
ln -sf $WORKSPACE/configurations/zsh-themes/*.zsh-theme ~/.oh-my-zsh/themes
ln -sf $WORKSPACE/configurations/zsh-plugins/*/ ~/.oh-my-zsh/plugins
ln -sf $WORKSPACE/configurations/fontconfig ~/.config
ln -sf $WORKSPACE/configurations/typora-themes/*  ~/.config/Typora/themes

# ln -sf $WORKSPACE/.themes/uLaunch-Dark/user-themes ~/.config/ulauncher

cd
touch ~/.workenv
echo . ~/.workenv >> ~/.profile
