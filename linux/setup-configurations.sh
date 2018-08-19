#create symbolic link for config files
mkdir ~/.config/i3status/
mkdir ~/i3/

#ln -sf $(pwd)/configurations/i3config ~/.config/i3/.config
#ln -sf $(pwd)configurations/i3statusConfig ~/.i3status.conf
ln -sf /home/bhavik/Documents/workspace/config-os/linux/configurations/xfce4/ ~/.config/xfce4
ln -sf $(pwd)configurations/compton.conf ~/.config/compton.conf
ln -sf $(pwd)configurations/.xbindkeysrc ~/
ln -sf $(pwd)/.themes ~/.themes

xbindkeys
