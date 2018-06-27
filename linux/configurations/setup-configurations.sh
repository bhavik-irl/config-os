#create symbolic link for config files
mkdir ~/.config/i3status/
mkdir ~/i3/

ln -sf ~/Documents/workspace/config-os/linux/configurations/i3config ~/.config/i3/.config
ln -sf ~/Documents/workspace/config-os/linux/configurations/i3statusConfig ~/.config/i3status/
ln -sf ~/Documents/workspace/config-os/linux/configurations/compton.conf ~/.config/compton.conf
ln -sf ~/Documents/workspace/config-os/linux/configurations/.xbindkeysrc ~/
ln -sf ~/Documents/workspace/config-os/linux/.themes ~/

xbindkeys
