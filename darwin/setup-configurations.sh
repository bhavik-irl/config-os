#create symbolic link for config files
ln -sf $(pwd)/configurations/.hushlogin ~/.hushlogin

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

# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install apps using cask
brew cask install zsh
brew cask install alfred
brew cask install android-studio 
brew cask install appcleaner
brew cask install brave
brew cask install calibre
brew cask install dropbox
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


# Giphy capture
# wunderlist
# trello
# BetterSnapTool
# Amphetamine