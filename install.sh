#!/bin/bash

# set repository
#sudo apt-add-repository ppa:ansible/ansible

#update 
#sudo apt update

# install zsh, tmux, ansible
#sudo apt install zsh tmux ansible curl fonts-powerline


#set zsh as the default shell
#chsh -s $(which zsh)

#set directory to home folder
cd ~

# Get dotfiles installation directory
git clone https://github.com/robbyrussell/oh-my-zsh.git || true
sudo git clone https://github.com/romkatv/powerlevel10k.git ~/oh-my-zsh/themes/powerlevel10k || true
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/oh-my-zsh/custom}/plugins/zsh-syntax-highlighting || true
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/oh-my-zsh/custom}/plugins/zsh-autosuggestions || true

# setup vim plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#install purepower theme


# setup aliases for dotfile locations
grep -qxF 'source ~/dotfiles/vimrc/vimrc' ~/.vimrc || echo 'source ~/dotfiles/vimrc/vimrc' >> ~/.vimrc
grep -qxF 'source ~/dotfiles/zshrc' ~/.zshrc || echo 'source ~/dotfiles/zshrc' >> ~/.zshrc
