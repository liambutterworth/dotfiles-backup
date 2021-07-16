#!/usr/bin/env bash

dotfiles() {
    git --git-dir=$HOME/.dotfiles --work-tree=$HOME $@
}

echo "\nInitializing dotfiles repo\n"

git clone --mirror https://github.com/liambutterworth/dotfiles .dotfiles

dotfiles switch -f master
dotfiles config --local status.showUntrackedFiles no

echo "\nInstalling vim-plug\n"

curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim --headless +PlugInstall +qall
