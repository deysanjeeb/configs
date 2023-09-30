sudo add-apt-repository ppa:touchegg/stable
command -v subl > /dev/null || {
    echo "Installing Sublime Text"
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gppg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
    sudo apt update
    sudo apt-get install sublime-text -y
}
sudo apt update
sudo apt-get install touchegg zsh -y
command -v curl > /dev/null || {
    echo "Installing curl"
    sudo apt-get install curl
}
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
