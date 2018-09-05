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
