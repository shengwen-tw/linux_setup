#My setup script for POP!_OS 20.04
#Author: Shengwen Cheng
#Email: shengwen1997.tw@gmail.com

sudo apt install -y software-properties-common

#add apt repo
sudo apt update
sudo apt dist-upgrade

sudo apt install vim git tig gedit nautilus pv transmission meld exuberant-ctags \
         cloc kolourpaint4 screen nmap gparted python3-pip \
         texlive-full texlive-science texlive-latex-base astyle gnuplot-x11 gnuplot
         powertop grub-customizer llvm clang lldb libclang-dev eog

#Google Chrome
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

#vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp ./auto/.vimrc ~/.vimrc
vim +PluginInstall +qall
cp ./auto/.ycm_extra_conf.py ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py
cd ~/.vim/bundle/YouCompleteMe #http://howiefh.github.io/2015/05/22/vim-install-youcompleteme-plugin/
./install.sh --clang-completer

#git editor
git config --global core.editor vim

#wget https://noto-website.storage.googleapis.com/pkgs/Noto-hinted.zip
#unzip Noto-hinted.zip
#mv  Noto-hinted ~/.fonts
#fc-cache -fv

#Set shortkeys
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Shift>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Shift>Right']"
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Shift>Up']"
gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Shift>Down']"
gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['<Super>q']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Alt>Tab']"

#sudo powertop --calibrate #Should calibrate at battery mode
#sudo cp ./auto/rc.local /etc/ #Copy rc.local (auto start powertop)

timedatectl set-local-rtc 1 --adjust-system-clock
