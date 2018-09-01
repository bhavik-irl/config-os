sudo apt update
sudo apt upgrade

#Create Directories
cd ~/Documents/workspace
cd mkdir nodejs reactjs android

#Add Repositories
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo add-apt-repository -y ppa:papirus/papirus

#Update Repos
sudo apt update
sudo apt upgrade

#Install 
sudo apt-get install -y unzip htop curl wget build-essential git vim zsh nodejs npm calibre gnome-tweak-tool tree qemu-kvm papirus-icon-theme xbindkeys xautomation exfat-fuse exfat-utils xpad compton timeshift dmenu gparted gnome-shell-extensions chrome-gnome-shell 

echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer

#Various 
sudo adduser bhavik kvm
# sudo chown -R $USER /usr/local --only if needed for nodejs
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh && chsh -s $(which zsh)

cd ~/Documents/workspace
git clone git@github.com:bp1235811/config-os.git

cd ~/Documents/workspace/config-os && ./linux-setup.sh 

cd ~/Documents/workspace/android
git clone git@github.com:n26/N26AndroidSamples.git
git clone https://github.com/hitherejoe/GithubTrending.git
git clone git@github.com:android10/Android-CleanArchitecture.git
git clone git@github.com:bp1235811/scratch-android.git

cd ~/Documents/workspace/nodejs
git clone git@github.com:bp1235811/scratch-nodejs.git

cd ~/Documents/workspace/reactjs
git clone git@github.com:bp1235811/scratch-reactjs.git