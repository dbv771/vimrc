# 安装字体
function install_fonts()
{
    mkdir ~/.fonts
    sudo rm -rf ~/.fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf
    sudo cp ./fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf ~/.fonts

    fc-cache -vf ~/.fonts
}

# 安装vim插件
function install_vim_plugin()
{
    vim -c "PlugInstall" -c "q" -c "q"
}

function install_env()
{
# ack运行环境
sudo apt-get install silversearcher-ag
}

function install_vimrc(){
install_fonts
install_env
install_vim_plugin
}

install_vimrc
