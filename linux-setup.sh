export WORKSPACE=/home/bhavik/Documents/workspace/config-os
export CONFIGS=$WORKSPACE/configurations

#mkdir ~/i3/
#ln -sf $CONFIGS/i3config ~/.config/i3/config
rm -rf ~/.config/xfce4
ln -sf $CONFIGS/xfce4 ~/.config/xfce4
ln -sf $CONFIGS/compton.conf ~/.config/compton.conf
ln -sf $CONFIGS/.xbindkeysrc ~/.xbindkeysrc
ln -sf $CONFIGS/.zshrc ~/.zshrc
ln -sf $CONFIGS/.vimrc ~/.vimrc
ln -sf $WORKSPACE/.themes ~/.themes
ln -sf $WORKSPACE/.fonts ~/.fonts

touch ~/.workenv
echo . ~/.workenv >> .profile
