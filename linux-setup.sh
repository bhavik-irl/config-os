export WORKSPACE=/home/bhavik/Documents/workspace/config-os
export CONFIGS=$WORKSPACE/configurations

ln -sf $CONFIGS/.xbindkeysrc ~/.xbindkeysrc
ln -sf $CONFIGS/.zshrc ~/.zshrc
ln -sf $CONFIGS/.vimrc ~/.vimrc
ln -sf $WORKSPACE/.themes ~/.themes
ln -sf $WORKSPACE/.fonts ~/.fonts

touch ~/.workenv
echo . ~/.workenv >> ~/.profile
