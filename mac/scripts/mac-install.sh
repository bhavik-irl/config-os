# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install apps using cask
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# Install Apps using brew cask
# Generic tools
brew cask install appcleaner
brew cask install iterm2
brew cask install google-chrome
brew cask install firefox
brew cask install postman
brew cask install sourcetree
brew cask install slack
brew cask install visual-studio-code

# DB/DBMS
brew cask install mongodb
brew cask install mongodb-compass
brew cask install sequel-pro

# Android
brew cask install android-studio 

# Other
brew cask install spotify

# Node JS
mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install v12.10.0
nvm install v10.16.3

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s $(which zsh)

Echo "
Install Following From App Store Manually:
- Giphy capture
- BetterSnapTool
"

export WORKSPACE=~/Workspace/config-os
export CONFIGS=$WORKSPACE/configurations

#create symbolic links for config files
ln -sf $CONFIGS/.hushlogin ~/.hushlogin

#Copy fonts
cd $WORKSPACE/.fonts 
cp *.ttf $HOME/Library/Fonts
cp *.otf $HOME/Library/Fonts

#Run Global Script
rm $HOME/.zshrc
touch .workenv
ln -sf $CONFIGS/.zshrc $HOME/.zshrc

ln -sf $WORKSPACE/configurations/zsh-themes/*.zsh-theme ~/.oh-my-zsh/themes
ln -sf $WORKSPACE/configurations/zsh-plugins/*/ ~/.oh-my-zsh/plugins
ln -sf $WORKSPACE/configurations/typora-themes/*  ~/Library/Application\ Support/abnerworks.Typora/themes

cd
touch ~/.workenv
echo . ~/.workenv >> ~/.profile