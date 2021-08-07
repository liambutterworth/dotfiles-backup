#!/usr/bin/env bash

dotfiles() {
    git --git-dir=$HOME/.dotfiles --work-tree=$HOME $@
}

echo "\nInitializing dotfiles repo\n"

git clone --mirror https://github.com/liambutterworth/dotfiles .dotfiles

dotfiles switch -f master
dotfiles config --local status.showUntrackedFiles no

echo "\nInstalling plugins\n"

git clone --depth=1 https://github.com/savq/paq-nvim.git \
    "~/.local/share/nvim/site/pack/paqs/start/paq-nvim"

nvim --headless +PaqInstall +qall
