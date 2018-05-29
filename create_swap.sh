free -m|grep Swap

function create_swap()
{
    sudo mkdir /mnt/swap
    #建立一个1024M的虚拟内存
    sudo dd if=/dev/zero of=/mnt/swap/swapadd bs=1024 count=1048576
    #启用虚拟内存
    sudo mkswap /mnt/swap/swapadd
    sudo swapon /mnt/swap/swapadd
}

function start_with_system()
{
    #开机启动
    echo "/mnt/swap/swapadd swap swap defaults 0 0" >> /etc/fstab
}
