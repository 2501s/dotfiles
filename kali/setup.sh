#!/bin/bash
sudo apt update
sudo apt install i3 i3blocks rxvt-unicode

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# copy over config-files
cp .bashrc ~/
cp .vimrc ~/
cp .xinputrc ~/
cp .Xresources ~/
cp -r i3 ~/.config/

# change terminal to urxvt
sudo update-alternatives --config x-terminal-emulator
