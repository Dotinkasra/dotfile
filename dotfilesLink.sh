#!/bin/bash
if [ "$(uname)" == 'Darwin' ]; then
    echo Mac
    linux=0
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    echo Linux
    linux=1
fi

# vim-jetpackの導入
echo ■jetpackの導入
if [ ! -e ~/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim ];then
    echo jetpackがインストールされていません
    curl -fLo ~/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim
fi
ln -sf ~/dotfile/.vimrc ~/.vimrc
echo ●jetpackの導入が完了しました

# mpv入力設定ファイルの導入
echo ■mpv設定ファイルの導入
mkdir -p ~/.config/mpv
ln -sf ~/dotfile/input.conf ~/.config/mpv/input.conf
echo ●mpv設定ファイルの導入が完了しました

# fishの導入
echo ■fishの導入
which fish > /dev/null 2>&1; result=$?
if [ ! $result -eq 0 ];then
    echo ▲fishをインストールします
    if [ $linux -eq 0 ];then
        echo OS:mac
        brew install fish
    elif [ $linux -eq 1 ];then
        echo OS:Debian
        sudo apt-add-repository ppa:fish-shell/release-3
        sudo apt update
        sudo apt install --yes fish
    else
        echo ●fishがインストールされています
    fi
fi
ln -sf ~/dotfile/config.fish ~/.config/fish/config.fish
echo ●fishの導入が完了しました
