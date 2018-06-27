#create symbolic link for config files
mkdir ~/.config/i3status/

ln -sf ~/Documents/workspace/workstation-setup/config/i3/config ~/.config/i3/
ln -sf ~/Documents/workspace/workstation-setup/config/i3status/config ~/.config/i3status/
ln -sf ~/Documents/workspace/workstation-setup/config/.zshrc ~/
ln -sf ~/Documents/workspace/workstation-setup/config/compton/compton.conf ~/.config/compton.conf
ln -sf ~/Documents/workspace/workstation-setup/config/.themes ~/
ln -sf ~/Documents/workspace/workstation-setup/config/.xbindkeysrc ~/

xbindkeys
