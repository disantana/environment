#!/usr/bin/env sh

#Create directories
createDir() {
    sudo mkdir $1/{app,aws,logs}
}

#Install main tools to work as a developer
installTools(){
  sudo snap install webstorm --classic
  sudo snap install intellij-idea-ultimate --classic
  sudo snap install sublime-text --classic
  sudo snap install postman dbeaver-ce
}

installDocker(){
  sudo apt-get update
  sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo apt-key fingerprint 0EBFCD88
  udo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   sudo apt-get update
   sudo apt-get install docker docker.io docker-compose
   sudo usermod -aG docker $USER
}


#createDir "/home/$USER"
#installTools
installDocker
