# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install apps using cask
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Apps using brew cask
brew cask install android-studio 
brew cask install appcleaner
brew cask install brave
brew cask install firefox
brew cask install flux
brew cask install google-chrome
brew cask install iterm2
brew cask install macdown
brew cask install mongodb
brew cask install mongodb-compass
brew cask install postman
brew cask install sequel-pro
brew cask install simplenote
brew cask install skitch
brew cask install slack
brew cask install sourcetree
brew cask install spotify
brew cask install teleport
brew cask install transmission
brew cask install virtualbox
brew cask install visual-studio-code
brew cask install gimp

Echo "
Install Following From App Store Manually:
- Giphy capture
- wunderlist
- trello
- BetterSnapTool
- Amphetamine
"

export WORKSPACE=/Users/bhavik/Documents/workspace/config-os
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
ln -sf $CONFIGS/.vimrc $HOME/.vimrc

# Disable Open/Close Window Animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Disable Quick Look Animations
defaults write -g QLPanelAnimationDuration -float 0

# Disable Window Size Adjustment Animations
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Disable Dock Animations
defaults write com.apple.dock launchanim -bool false

# Disable the “Get Info” Animation
defaults write com.apple.finder DisableAllAnimations -bool true
