#Setup script for Elementary OS 5.0
#Author: Shengwen Cheng
#Email: shengwen1997.tw@gmail.com

sudo apt install -y software-properties-common

#add apt repo
sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
sudo apt update
sudo apt dist-upgrade

#install apt
sudo apt install numix-icon-theme-circle elementary-tweaks #tweek elementary os
sudo cp ./index.theme /usr/share/icons/Numix-Circle/index.theme

sudo apt install vim git tig gedit nautilus pv transmission meld exuberant-ctags cloc kolourpaint4 python-pip screen xflr5 \
     nmap adobe-flashplugin skype winusb gparted python3-pip texlive-full texlive-science texlive-latex-base astyle gnuplot-x11 gnuplot \
     powertop grub-customizer llvm clang lldb libclang-dev eog

sudo apt install ttf-linux-libertine ttf-mscorefonts-installer msttcorefonts #MS fonts

#Intsall Google Chrome
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

#vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp ./.vimrc ~/.vimrc
vim +PluginInstall +qall
cp ./.ycm_extra_conf.py ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py
cd ~/.vim/bundle/YouCompleteMe #http://howiefh.github.io/2015/05/22/vim-install-youcompleteme-plugin/
./install.sh --clang-completer

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

sudo powertop --calibrate #Should calibrate at battery mode

#gnome theme [https://github.com/denysdovhan/one-gnome-terminal]
#sudo chown -R $USER ~/.gconf/apps/
#sudo chown -R $USER ~/.config/dconf
#chmod -R u+w ~/.gconf/apps/
#chmod -R u+w ~/.config/dconf
#sudo chmod -R 777 ./one_dark.sh
#bash ./one-dark.sh
#sudo bash ./one-dark.sh

#Set Gnome terminator as default [http://elementaryos.stackexchange.com/questions/1344/how-can-i-change-the-default-terminal-app]
#sudo apt install gnome-terminal
#sudo update-alternatives --set x-terminal-emulator /usr/bin/gnome-terminal.wrapper
#gsettings set org.gnome.desktop.default-applications.terminal exec gnome-terminal
#gsettings set org.gnome.desktop.default-applications.terminal exec-arg ''
