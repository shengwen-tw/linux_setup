#Setup script for Elementary OS
#Author: Shengwen Cheng
#Email: shengwen1997.tw@gmail.com

#add apt repo
sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:mpstark/elementary-tweaks-daily
sudo add-apt-repository ppa:fcitx-team
sudo add-apt-repository --yes ppa:js-reynaud/kicad-4
sudo add-apt-repository 'deb http://archive.canonical.com/ubuntu trusty partner'
sudo dpkg --add-architecture i386
sudo apt-get update

#install apt
sudo apt-get install numix-icon-theme-circle #Circular dock
sudo apt-get install elementary-tweaks #Elementary os tweeks tool
sudo apt-get install im-config fcitx fcitx-config-gtk fcitx-chewing #fctix-chewing
sudo apt-get install vim git tig gnome-terminal gedit nautilus pv transmission kicad meld exuberant-ctags cloc kolourpaint4 python-pip screen screen xflr5 nmap
sudo apt-get install adobe-flashplugin skype
sudo apt-get install gnuplot-x11 gnuplot

#sudo apt-get install bumblebee bumblebee-nvidia primus linux-headers-generic #nvidia third party hardware driver

#gnome theme [https://github.com/denysdovhan/one-gnome-terminal]
sudo chown -R $USER ~/.gconf/apps/
sudo chown -R $USER ~/.config/dconf
chmod -R u+w ~/.gconf/apps/
chmod -R u+w ~/.config/dconf
sudo chmod -R 777 ./one_dark.sh
bash ./one-dark.sh
sudo bash ./one-dark.sh

#Set Gnome terminator as default [http://elementaryos.stackexchange.com/questions/1344/how-can-i-change-the-default-terminal-app]
sudo update-alternatives --set x-terminal-emulator /usr/bin/gnome-terminal.wrapper
gsettings set org.gnome.desktop.default-applications.terminal exec gnome-terminal
gsettings set org.gnome.desktop.default-applications.terminal exec-arg ''

#vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp ./.vimrc ~/.vimrc
vim +PluginInstall +qall

#git editor
git config --global core.editor vim
