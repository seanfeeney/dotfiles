#!/bin/bash



# Get dotfiles installation directory
git clone https://github.com/romkatv/powerlevel10k.git ~/oh-my-zsh/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/oh-my-zsh/custom}/plugins/zsh-autosuggestions

# setup vim plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
