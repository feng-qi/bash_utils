#!/usr/bin/env bash

# install some program
sudo apt install -y ibus-table ibus-table-wubi ibus-libpinyin
sudo apt install -y vim-gui-common yakuake zsh

# install font "source code pro"
# /usr/share/fonts/opentype/source-code-pro
wget "https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip" -O "$HOME/Downloads/source_code_pro.zip"
cd "$HOME/Downloads/source-code-pro-2.030R-ro-1.050R-it/"
sudo mkdir /usr/local/share/fonts/source_code_pro
sudo cp OTF/* /usr/local/share/fonts/source_code_pro
fc-cache -fv

# install package suggestion
sudo apt install -y command-not-found
echo "source /etc/zsh_command_not_found" >> $HOME/.zshrc
sudo update-command-not-found
