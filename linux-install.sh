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

echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -

sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get install apt-transport-https

# Refresh repository sources and install Insomnia
sudo apt-get update
sudo apt-get install 

# Update Repos
sudo apt update -y
sudo apt upgrade -y

# Install 
sudo apt-get install -y unzip htop curl wget gpick build-essential dotnet-sdk-2.2 cmake git gimp zsh flameshot calibre steam-devices gnome-disk-utility tree qemu-kvm papirus-icon-theme xbindkeys xautomation exfat-fuse exfat-utils xpad timeshift gparted gnome-shell-extensions chrome-gnome-shell gnome-tweak-tool openjdk-8-jdk snapd insomnia code
snap install spotify bitwarden

# AWS setup
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

# Node JS
sudo apt-get install curl
mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

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
cd ~/Documents/workspace
git clone git@github.com:bp1235811/config-os.git

cd ~/Documents/workspace/android
git clone git@github.com:n26/N26AndroidSamples.git
git clone https://github.com/hitherejoe/GithubTrending.git
git clone git@github.com:android10/Android-CleanArchitecture.git
git clone git@github.com:bp1235811/scratch-android.git

cd ~/Documents/workspace/nodejs
git clone git@github.com:bp1235811/scratch-nodejs.git

cd ~/Documents/workspace/reactjs
git clone git@github.com:bp1235811/scratch-reactjs.git

echo "Software
- Google Chrome
- Dropbox
- Simple Note
- Slack
- virtualbox
- Android Studio
- Webstorm
- Intellij Idea 
- Web storm
- Postman
"

echo "Gnome Extensions
- Dash to Dock  
- KStatusNotifierItem/AppIndicator Support 
- Remove Alt+Tab Delay  
- Suspend Button
- User Themes
- Hide Activities Button
"

echo "\n\n"

# Linux Configuration
export WORKSPACE=/home/bhavik/Documents/workspace/config-os
export CONFIGS=$WORKSPACE/configurations

ln -sf $CONFIGS/.xbindkeysrc ~/.xbindkeysrc
ln -sf $CONFIGS/.zshrc ~/.zshrc
# ln -sf $CONFIGS/compton.conf ~/.config/compton.conf
ln -sf $WORKSPACE/.themes ~/.themes
ln -sf $WORKSPACE/.fonts ~/.fonts

cd
touch ~/.workenv
echo . ~/.workenv >> ~/.profile
