sudo apt update -y
sudo apt upgrade -y

# Create Directories
mkdir ~/Documents/workspace
cd ~/Documents/workspace
mkdir nodejs reactjs android

# Add Repositories
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo add-apt-repository -y ppa:papirus/papirus

# Update Repos
sudo apt update -y
sudo apt upgrade -y

# Install 
sudo apt-get install -y unzip htop curl wget gpick build-essential cmake git gimp zsh nodejs npm flameshot calibre gnome-tweak-tool gnome-disk-utility tree qemu-kvm papirus-icon-theme xbindkeys xautomation exfat-fuse exfat-utils xpad timeshift gparted gnome-shell-extensions chrome-gnome-shell pdftk

echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer

#Various 
sudo adduser bhavik kvm
# sudo chown -R $USER /usr/local --only if needed for nodejs
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s $(which zsh)

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

sudo apt install steam-devices

echo "Apps
- Google Chrome
- Dropbox
- Spotify
- Simple Note
- Slack
- virtualbox
"

echo "Development IDE & Code editors
- Android Studio
- Intellij Idea 
- VS Code
"

echo "Image/Design Apps
- Flameshot | Screenshot Tool 
- Gpick | Color Picker
- Gimp
- Krita
- Inkscape
- Darktable
- Peek
"

echo "\n\n"

# Linux Configuration
export WORKSPACE=/home/bhavik/Documents/workspace/config-os
export CONFIGS=$WORKSPACE/configurations

ln -sf $CONFIGS/.xbindkeysrc ~/.xbindkeysrc
ln -sf $CONFIGS/.zshrc ~/.zshrc
ln -sf $CONFIGS/.vimrc ~/.vimrc
ln -sf $CONFIGS/compton.conf ~/.config/compton.conf
ln -sf $WORKSPACE/.themes ~/.themes
ln -sf $WORKSPACE/.fonts ~/.fonts

cd 
touch ~/.workenv
echo . ~/.workenv >> ~/.profile
