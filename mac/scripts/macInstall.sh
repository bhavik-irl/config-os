
# Install 
echo "
██╗███╗░░██╗░██████╗████████╗░█████╗░██╗░░░░░██╗░░░░░██╗███╗░░██╗░██████╗░
██║████╗░██║██╔════╝╚══██╔══╝██╔══██╗██║░░░░░██║░░░░░██║████╗░██║██╔════╝░
██║██╔██╗██║╚█████╗░░░░██║░░░███████║██║░░░░░██║░░░░░██║██╔██╗██║██║░░██╗░
██║██║╚████║░╚═══██╗░░░██║░░░██╔══██║██║░░░░░██║░░░░░██║██║╚████║██║░░╚██╗
██║██║░╚███║██████╔╝░░░██║░░░██║░░██║███████╗███████╗██║██║░╚███║╚██████╔╝
╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚══════╝╚═╝╚═╝░░╚══╝░╚═════╝░"

# get Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install apps using cask
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Apps using brew cask
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask firefox
brew install --cask postman
brew install --cask sourcetree
brew install --cask slack
brew install --cask visual-studio-code
brew install --cask mongodb
brew install --cask mongodb-compass
brew install --cask sequel-pro
brew install --cask spotify
brew install --cask typora
# AWS
echo "
░█████╗░░██╗░░░░░░░██╗░██████╗
██╔══██╗░██║░░██╗░░██║██╔════╝
███████║░╚██╗████╗██╔╝╚█████╗░
██╔══██║░░████╔═████║░░╚═══██╗
██║░░██║░░╚██╔╝░╚██╔╝░██████╔╝
╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░╚═════╝░
"
brew install awscli

#NVM
echo "
███╗░░██╗██╗░░░██╗███╗░░░███╗
████╗░██║██║░░░██║████╗░████║
██╔██╗██║╚██╗░██╔╝██╔████╔██║
██║╚████║░╚████╔╝░██║╚██╔╝██║
██║░╚███║░░╚██╔╝░░██║░╚═╝░██║
╚═╝░░╚══╝░░░╚═╝░░░╚═╝░░░░░╚═╝
"
mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

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
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s $(which zsh)

echo "
██████╗░░█████╗░███╗░░██╗███████╗
██╔══██╗██╔══██╗████╗░██║██╔════╝
██║░░██║██║░░██║██╔██╗██║█████╗░░
██║░░██║██║░░██║██║╚████║██╔══╝░░
██████╔╝╚█████╔╝██║░╚███║███████╗
╚═════╝░░╚════╝░╚═╝░░╚══╝╚══════╝
"
