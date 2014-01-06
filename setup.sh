#!/usr/env bash

# grab the script directory
DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#
# setup vim
#
ln -s ${DOTFILES}/.vimrc ~/.vimrc
ln -s ${DOTFILES}/.vim ~/.vim
mkdir ~/.vimswap
