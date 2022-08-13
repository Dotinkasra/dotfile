#!/bin/sh

if [ -e curl -fLo "~/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim" ];then
    curl -fLo ~/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim
fi
ln -sf ~/dotfile/.vimrc ~/.vimrc
ln -sf ~/dotfile/input.conf ~/.config/mpv/input.conf
ln -sf ~/dotfile/config.fish ~/.config/fish/config.fish
