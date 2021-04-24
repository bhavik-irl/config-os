sudo apt update -y
sudo apt upgrade -y

# Add Repositories
sudo add-apt-repository -y ppa:papirus/papirus
sudo add-apt-repository -y ppa:agornostal/ulauncher

wget -qO - https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add - 
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

sudo apt-get update
sudo apt-get install 

# Update Repos
sudo apt update -y  
sudo apt upgrade -y

# Install 
echo "
██╗███╗░░██╗░██████╗████████╗░█████╗░██╗░░░░░██╗░░░░░██╗███╗░░██╗░██████╗░
██║████╗░██║██╔════╝╚══██╔══╝██╔══██╗██║░░░░░██║░░░░░██║████╗░██║██╔════╝░
██║██╔██╗██║╚█████╗░░░░██║░░░███████║██║░░░░░██║░░░░░██║██╔██╗██║██║░░██╗░
██║██║╚████║░╚═══██╗░░░██║░░░██╔══██║██║░░░░░██║░░░░░██║██║╚████║██║░░╚██╗
██║██║░╚███║██████╔╝░░░██║░░░██║░░██║███████╗███████╗██║██║░╚███║╚██████╔╝
╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚══════╝╚═╝╚═╝░░╚══╝░╚═════╝░"
sudo apt-get install -y unzip htop pdftk curl papirus-icon-theme xfce4-terminal wget gpick fonts-powerline build-essential git gimp zsh flameshot ulauncher redis-tools calibre tree qemu-kvm timeshift gnome-shell-extensions gnome-tweaks code signal-desktop

# AWS
echo "
░█████╗░░██╗░░░░░░░██╗░██████╗
██╔══██╗░██║░░██╗░░██║██╔════╝
███████║░╚██╗████╗██╔╝╚█████╗░
██╔══██║░░████╔═████║░░╚═══██╗
██║░░██║░░╚██╔╝░╚██╔╝░██████╔╝
╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░╚═════╝░
"
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

# Node JS
echo "
███╗░░██╗░█████╗░██████╗░███████╗
████╗░██║██╔══██╗██╔══██╗██╔════╝
██╔██╗██║██║░░██║██║░░██║█████╗░░
██║╚████║██║░░██║██║░░██║██╔══╝░░
██║░╚███║╚█████╔╝██████╔╝███████╗
╚═╝░░╚══╝░╚════╝░╚═════╝░╚══════╝
"
mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Docker
echo "
██████╗░░█████╗░░█████╗░██╗░░██╗███████╗██████╗░
██╔══██╗██╔══██╗██╔══██╗██║░██╔╝██╔════╝██╔══██╗
██║░░██║██║░░██║██║░░╚═╝█████═╝░█████╗░░██████╔╝
██║░░██║██║░░██║██║░░██╗██╔═██╗░██╔══╝░░██╔══██╗
██████╔╝╚█████╔╝╚█████╔╝██║░╚██╗███████╗██║░░██║
╚═════╝░░╚════╝░░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝
"
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic test"
sudo apt update
sudo apt install docker-ce

# Typora
echo "
████████╗██╗░░░██╗██████╗░░█████╗░██████╗░░█████╗░
╚══██╔══╝╚██╗░██╔╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗
░░░██║░░░░╚████╔╝░██████╔╝██║░░██║██████╔╝███████║
░░░██║░░░░░╚██╔╝░░██╔═══╝░██║░░██║██╔══██╗██╔══██║
░░░██║░░░░░░██║░░░██║░░░░░╚█████╔╝██║░░██║██║░░██║
░░░╚═╝░░░░░░╚═╝░░░╚═╝░░░░░░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝
"
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get install typora

#NVM
echo "
███╗░░██╗██╗░░░██╗███╗░░░███╗
████╗░██║██║░░░██║████╗░████║
██╔██╗██║╚██╗░██╔╝██╔████╔██║
██║╚████║░╚████╔╝░██║╚██╔╝██║
██║░╚███║░░╚██╔╝░░██║░╚═╝░██║
╚═╝░░╚══╝░░░╚═╝░░░╚═╝░░░░░╚═╝
"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install v14.15.3

# oh-my-zsh 
echo "
░█████╗░██╗░░██╗░░░░░░███╗░░░███╗██╗░░░██╗░░░░░░███████╗░██████╗██╗░░██╗
██╔══██╗██║░░██║░░░░░░████╗░████║╚██╗░██╔╝░░░░░░╚════██║██╔════╝██║░░██║
██║░░██║███████║█████╗██╔████╔██║░╚████╔╝░█████╗░░███╔═╝╚█████╗░███████║
██║░░██║██╔══██║╚════╝██║╚██╔╝██║░░╚██╔╝░░╚════╝██╔══╝░░░╚═══██╗██╔══██║
╚█████╔╝██║░░██║░░░░░░██║░╚═╝░██║░░░██║░░░░░░░░░███████╗██████╔╝██║░░██║
░╚════╝░╚═╝░░╚═╝░░░░░░╚═╝░░░░░╚═╝░░░╚═╝░░░░░░░░░╚══════╝╚═════╝░╚═╝░░╚═╝
"
sudo adduser bhavik kvm
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s $(which zsh)

# Clean Up
echo "
░█████╗░██╗░░░░░███████╗░█████╗░███╗░░██╗██╗░░░██╗██████╗░
██╔══██╗██║░░░░░██╔════╝██╔══██╗████╗░██║██║░░░██║██╔══██╗
██║░░╚═╝██║░░░░░█████╗░░███████║██╔██╗██║██║░░░██║██████╔╝
██║░░██╗██║░░░░░██╔══╝░░██╔══██║██║╚████║██║░░░██║██╔═══╝░
╚█████╔╝███████╗███████╗██║░░██║██║░╚███║╚██████╔╝██║░░░░░
░╚════╝░╚══════╝╚══════╝╚═╝░░╚═╝╚═╝░░╚══╝░╚═════╝░╚═╝░░░░░
"
rm awscli-bundle.zip
rm -rf awscli-bundle

echo "
██████╗░░█████╗░███╗░░██╗███████╗
██╔══██╗██╔══██╗████╗░██║██╔════╝
██║░░██║██║░░██║██╔██╗██║█████╗░░
██║░░██║██║░░██║██║╚████║██╔══╝░░
██████╔╝╚█████╔╝██║░╚███║███████╗
╚═════╝░░╚════╝░╚═╝░░╚══╝╚══════╝
"
