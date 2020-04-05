sudo apt update -y
sudo apt upgrade -y

# Create Directories
mkdir ~/Documents/workspace
cd ~/Documents/workspace
mkdir nodejs reactjs android

# Add Repositories
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo add-apt-repository -y ppa:papirus/papirus

sudo apt-get update
sudo apt-get install 

# Update Repos
sudo apt update -y
sudo apt upgrade -y

# Install 
sudo apt-get install -y unzip htop curl wget gpick fonts-powerline git gimp zsh flameshot calibre qemu-kvm papirus-icon-theme xbindkeys xautomation exfat-fuse exfat-utils xpad timeshift gparted gnome-shell-extensions gnome-tweak-tool openjdk-8-jdk snapd code zeal flatpak 
snap install spotify

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install hydrapaper

# AWS setup
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

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

#Various 
sudo adduser bhavik kvm
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s $(which zsh)


#Repository setup
#cd ~/Documents/workspace
#git clone git@github.com:bp1235811/config-os.git

#cd ~/Documents/workspace/android
#git clone git@github.com:n26/N26AndroidSamples.git
#git clone https://github.com/hitherejoe/GithubTrending.git
#git clone git@github.com:android10/Android-CleanArchitecture.git
#git clone git@github.com:bp1235811/scratch-android.git

#cd ~/Documents/workspace/nodejs
#git clone git@github.com:bp1235811/scratch-nodejs.git

#cd ~/Documents/workspace/reactjs
#git clone git@github.com:bp1235811/scratch-reactjs.git

#gsettings set org.gnome.desktop.interface gtk-theme 'Sierra-dark-solid' 
#gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'

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
- KStatusNotifierItem/AppIndicator Support 
- Remove Alt+Tab Delay  
- Suspend Button
- User Themes
- Hide Activities Button
- Sound Input & Output Device Chooser
- Bluetooth quick connect 
- gTile (for Ultrawide Monitors)
- Caffeine 
- Impatience 
- Hide Top Bar
- ShellTile
- Steal My Focus 
"

echo "\n\n"

# Linux Configuration
export WORKSPACE=/home/bhavik/Documents/workspace/config-os
export CONFIGS=$WORKSPACE/configurations

ln -sf $CONFIGS/.xbindkeysrc ~/.xbindkeysrc
ln -sf $CONFIGS/.Xmodmap ~/.Xmodmap
ln -sf $CONFIGS/.zshrc ~/.zshrc
ln -sf $WORKSPACE/.themes ~/.themes
ln -sf $WORKSPACE/.fonts ~/.fonts
ln -sf $CONFIGS/.vimrc ~/.vimrc
ln -sf $WORKSPACE/configurations/gnome-launchers/*.desktop ~/.local/share/applications #usr/share/applications
ln -sf $WORKSPACE/configurations/zsh-themes/*.zsh-theme ~/.oh-my-zsh/themes
ln -sf $WORKSPACE/configurations/zsh-plugins/*/ ~/.oh-my-zsh/plugins

cd
touch ~/.workenv
echo . ~/.workenv >> ~/.profile
