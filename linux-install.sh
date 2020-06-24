sudo apt update -y
sudo apt upgrade -y

# Add Repositories
sudo add-apt-repository ppa:openjdk-r/ppa
sudo add-apt-repository -y ppa:papirus/papirus
sudo add-apt-repository -y ppa:agornostal/ulauncher

sudo apt-get update
sudo apt-get install 

# Update Repos
sudo apt update -y
sudo apt upgrade -y

# Install 
sudo apt-get install -y unzip htop pdftk curl wget gpick p7zip-full fonts-powerline build-essential git gimp zsh flameshot ulauncher redis-tools calibre tree qemu-kvm papirus-icon-theme xbindkeys xpad timeshift gnome-shell-extensions chrome-gnome-shell gnome-tweak-tool openjdk-8-jdk zeal 
snap install spotify

# AWS setup
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

# Install Visual Studio Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code

# Node JS
sudo apt-get install curl
mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic test"
sudo apt update
sudo apt install docker-ce


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install v12.10.0
nvm install v10.16.3

# Docker setup

# Notion Wrapper for Linux
mkdir ~/Applications
cd ~/Applications
git clone git@github.com:puneetsl/lotion.git
cd ~/Applications/lotion
./install.sh

#Various 
sudo adduser bhavik kvm
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s $(which zsh)

echo "Software
- Google Chrome
- Dropbox
- Standard Notes
- Slack
- virtualbox
- Android Studio
- Webstorm
- Intellij Idea
- Postman
- uLauncher (https://ulauncher.io/) cp `dark` theme to ~/.config/ulauncher/user-themes/    
"

echo "Gnome Extensions
- Dash to Dock  
- Dash to Panel
- Panel OSD
- Notification Center
- KStatusNotifierItem/AppIndicator Support 
- Remove Alt+Tab Delay v2
- User Themes
- Hide Activities Button
- Sound Input & Output Device Chooser
- Bluetooth quick connect 
- gTile (for Ultrawide Monitors)
- Caffeine 
- Impatience 
- Steal My Focus 
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
# ln -sf $WORKSPACE/.themes/uLaunch-Dark/user-themes ~/.config/ulauncher

cd
touch ~/.workenv
echo . ~/.workenv >> ~/.profile
