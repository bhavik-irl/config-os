export WORKSPACE=/home/bhavik/Documents/workspace/config-os
export CONFIGS=$WORKSPACE/configurations

rm -rf ~/.config/xfce4

ln -sf $CONFIGS/.xbindkeysrc ~/.xbindkeysrc
ln -sf $CONFIGS/.Xmodmap ~/.Xmodmap
ln -sf $CONFIGS/.zshrc ~/.zshrc
ln -sf $CONFIGS/.vimrc ~/.vimrc
ln -sf $WORKSPACE/.themes ~/.themes
ln -sf $WORKSPACE/.fonts ~/.fonts
ln -sf $WORKSPACE/xfce4 ~/.config/xfce4
ln -sf $WORKSPACE/configurations/gnome-launchers/*.desktop ~/.local/share/applications

touch ~/.workenv
echo . ~/.workenv >> ~/.profile
