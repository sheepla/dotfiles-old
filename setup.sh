#!/bin/sh

# Create directories
mkdir -p ~/bin \
    ~/repos \
    ~/.config/i3/ \
    ~/.config/rofi/themes \
    ~/.config/dunst \
    ~/.local/bin \
    ~/.local/share/fonts \
    ~/.local/lib

# Update & Upgrade
sudo apt update -y
sudo apt upgrade -y

# Install packages --------------- {{{

# Install CLI/TUI tools (w3m, ranger, ddgr, tig, translate-shell, unzip)
sudo apt install w3m w3m-img ranger ddgr tig unzip -y
wget git.io/trans -O ~/bin/trans
chmod +x ~/bin/trans

# Install GUI tools (i3-gaps, rofi, dunst, urxvt, sxiv, mupdf)
sudo add-apt-repository ppa:kgilmer/speed-ricer -y
sudo apt-get update -y
sudo apt install i3-gaps rofi dunst rxvt-unicode-256color nitrogen sxiv mupdf vim-gtk compton -y

# Install urxvt extention
#   NOTE: To install extentions, put perl files at
#             ~/.urxvt/ext or 
#         or append ~/.Xresources
#             URxvt.perl-lib: path/to/extention-dir

git clone https://github.com/simmel/urxvt-resize-font.git ~/.local/lib/urxvt-resize-font/
git clone https://github.com/muennich/urxvt-perls.git     ~/.local/lib/urxvt-perls/

# Install input method
sudo apt install fcitx-mozc fcitx-config-gtk -y

# Install status bar
sudo apt install python python-pip
pip install --user bumblebee-status psutil netifaces i3ipc

# Install dein.vim
#   https://github.com/Shougo/dein.vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ./temp/dein_installer.sh
sh ./temp/dein_installer.sh ~/.cache/dein

# TODO Install fonts
wget https://github.com/miiton/Cica/releases/download/v5.0.1/Cica_v5.0.1_with_emoji.zip -O ./temp/Cica.zip
#unzip ./temp/Cica.zip -d ./temp/Cica/
#mv ./temp/Cica/*.ttf ~/.local/share/fonts/

wget https://github.com/yuru7/HackGen/releases/download/v1.4.1/HackGen_v1.4.1.zip -O ./temp/HackGen.zip
#unzip ./temp/HackGen.zip -d ./temp/HackGen/
#mv ./temp/HackGen/*.ttf ~/.local/share/fonts/

# }}}

# Put dotfile links ---------- {{{
# Vimrc
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
fi
ln -s $PWD/.vimrc ~/.vimrc

# Bashrc
cp ~/.bashrc ~/.bashrc.bak
cat $PWD/.bashrc >> ~./bashrc
ln -s $PWD/.bashrc ~/.bashrc

# Config files
ln -s $PWD/.Xresources                      ~/.Xresources
ln -s $PWD/.config/i3/config                ~/.config/i3/config 
ln -s $PWD/.config/rofi/config              ~/.config/rofi/config
ln -s $PWD/.config/rofi/themes/iceberg.rasi ~/.config/rofi/themes/iceberg.rasi
ln -s $PWD/.config/dunst/dunstrc            ~/.config/dunst/dunstrc
ln -s $PWD/.w3m/config                      ~/.w3m/config
ln -s $PWD/.w3m/keymap                      ~/.w3m/keymap
# }}}
