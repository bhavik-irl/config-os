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
brew cask install virtualbox

Echo "
Install Following From App Store Manually:
- Giphy capture
- BetterSnapTool
"

export WORKSPACE=$HOME/Workspace/config-os
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