sudo apt update
sudo apt install zsh 

chsh -s $(which zsh)

command -v curl > /dev/null || {
    echo "Installing curl"
    sudo apt-get install curl
}

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sudo apt install autojump
echo ". /usr/share/autojump/autojump.sh" >> ~/.zshrc