function install_golang()
{
sudo apt install -y golang-go
}

function install_jdk8()
{
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
}

install_golang
install_jdk8
