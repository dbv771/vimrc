#!/bin/bash
DIR=`pwd`
# 安装字体
function install_fonts()
{
    if [ ! -d "~/.fonts"  ]; then
         mkdir ~/.fonts
    fi
    sudo rm -rf ~/.fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf
    sudo cp ./fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf ~/.fonts
    if which fc-cache >/dev/null;then
        echo "fc-cache 已经安装！"
    else
        sudo apt install -y fontconfig
    fi
    sudo fc-cache -vf ~/.fonts
}

# 安装vim插件
function install_vim_plugin()
{
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    # 创建链接
    rm -rf ~/.vimrc
    ln -s ${DIR}/vimrc ~/.vimrc 
    #安装插件
    vim -c "PlugInstall" -c "q" -c "q"
}

function install_env()
{
# ack运行环境
sudo apt-get install silversearcher-ag
# YCM ,and python3 is required
sudo apt-get install -y  build-essential cmake
sudo apt-get install -y python-dev python3-dev

}

function install_vimrc(){
install_fonts
install_env
install_vim_plugin
}

install_vimrc
