export LINUX_WORKSPACE=/home/bhavik/Documents/workspace/config-os
export LINUX_CONFIGS=$LINUX_WORKSPACE/configurations

#mkdir ~/i3/
#ln -sf $PATH_TO_WORKSPACE_ON_LINUX/configurations/i3config ~/.config/i3/.config
rm -rf ~/.config/xfce4
ln -sf $LINUX_CONFIGS/xfce4 ~/.config/xfce4
ln -sf $LINUX_CONFIGS/compton.conf ~/.config/compton.conf
ln -sf $LINUX_CONFIGS/.xbindkeysrc ~/.xbindkeysrc
ln -sf $LINUX_CONFIGS/.zshrc ~/.zshrc
ln -sf $LINUX_CONFIGS/.vimrc ~/.vimrc
ln -sf $LINUX_WORKSPACE/.themes ~/.themes
ln -sf $LINUX_WORKSPACE/.fonts ~/.fonts

touch ~/.workenv
echo . ~/.workenv >> .profile
