#Setup script for Elementary OS
#Author: Shengwen Cheng
#Email: shengwen1997.tw@gmail.com

#Add apt repo
sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:mpstark/elementary-tweaks-daily
sudo add-apt-repository ppa:fcitx-team
sudo add-apt-repository --yes ppa:js-reynaud/kicad-4
sudo apt-get update

#Install apt
sudo apt-get install numix-icon-theme-circle #Circular dock
sudo apt-get install elementary-tweaks #Elementary os tweeks tool
sudo apt-get install bumblebee bumblebee-nvidia primus linux-headers-generic #nvidia third party hardware driver
sudo apt-get install im-config fcitx fcitx-config-gtk fcitx-chewing #fctix-chewing
sudo apt-get install vim git tig gnome-terminal gedit nautilus pv bittorrent kicad

#Gnome theme [https://github.com/denysdovhan/one-gnome-terminal]
wget https://raw.githubusercontent.com/denysdovhan/gnome-terminal-one/master/one-dark.sh && sudo bash ./one-dark.sh

#Set Gnome terminator as default [http://elementaryos.stackexchange.com/questions/1344/how-can-i-change-the-default-terminal-app]
sudo update-alternatives --set x-terminal-emulator /usr/bin/gnome-terminal.wrapper
gsettings set org.gnome.desktop.default-applications.terminal exec gnome-terminal
gsettings set org.gnome.desktop.default-applications.terminal exec-arg ''

#git editor
git config --global core.editor vim
