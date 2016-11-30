#Setup script for Elementary OS
#Author: Shengwen Cheng
#Email: shengwen1997.tw@gmail.com

#add apt repo
sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
sudo add-apt-repository ppa:fcitx-team/nightly
sudo add-apt-repository --yes ppa:js-reynaud/kicad-4
sudo add-apt-repository ppa:colingille/freshlight
sudo add-apt-repository ppa:freecad-maintainers/freecad-stable
sudo add-apt-repository 'deb http://archive.canonical.com/ubuntu xenial partner'
sudo dpkg --add-architecture i386
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt update
sudo apt dist-upgrade

#install apt
sudo apt install numix-icon-theme-circle #Circular dock
sudo apt install elementary-tweaks #Elementary os tweeks tool

#Chinese input method
#sudo apt install im-config fcitx fcitx-config-gtk fcitx-chewing #fctix
sudo apt install im-config scim scim-chewing #scim

sudo apt install vim git tig gnome-terminal gedit nautilus pv transmission kicad meld exuberant-ctags cloc kolourpaint4 python-pip screen xflr5 nmap
sudo apt install adobe-flashplugin skype winusb gparted python3-pip
sudo apt install gnuplot-x11 gnuplot google-chrome-stable freecad powertop

#MS Font
sudo apt install ttf-linux-libertine ttf-mscorefonts-installer msttcorefonts

#sudo apt install bumblebee bumblebee-nvidia primus linux-headers-generic #nvidia third party hardware driver

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

#Copy rc.local
sudo cp ./rc.local /etc/
#git editor
git config --global core.editor vim

wget https://noto-website.storage.googleapis.com/pkgs/Noto-hinted.zip
unzip Noto-hinted.zip
mv  Noto-hinted ~/.fonts
fc-cache -fv

#Set shortkeys
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Shift>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Shift>Right']"
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Shift>Up']"
gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Shift>Down']"

sudo apt remove epiphany-browser
sudo apt remove pantheon-files

sudo cp 10-trackpoint.rules /etc/udev/rules.d/10-trackpoint.rules
