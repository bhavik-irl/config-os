
# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install apps using cask
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#create symbolic links for config files
ln -sf $(pwd)/configurations/.hushlogin ~/.hushlogin

#Copy fonts
cd $HOME/Documents/workspace/config-os/global/.fonts 
cp *.ttf $HOME/Library/Fonts
cp *.otf $HOME/Library/Fonts

#Run Global Script
rm $HOME/.zshrc
touch .workenv
ln -sf $HOME/Documents/workspace/config-os/global/.zshrc $HOME/.zshrc
ln -sf $HOME/Documents/workspace/config-os/global/.vimrc $HOME/.vimrc

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
