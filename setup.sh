#!/usr/bin/env bash

#------------------------------------------------------------------------------
# setup
#------------------------------------------------------------------------------

# grab the script directory
DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Installing dotfiles from ${DOTFILES}..."

#------------------------------------------------------------------------------
# functions
#------------------------------------------------------------------------------

install_file_link()
{
    if ([ -h $1 ] || [ ! -f $1 ]) then
        ln -fs ${DOTFILES}/$1 ~/$1
    else
        echo "  - skipping $1 already exists..."
    fi
}

#------------------------------------------------------------------------------

install_dir_link()
{
    if ([ -h ~/$1 ] || [ ! -d ~/$1 ]) then
        ln -fhs ${DOTFILES}/$1 ~/$1
    else
        echo "  - skipping $1 already exists..."
    fi
}

#------------------------------------------------------------------------------
# install
#------------------------------------------------------------------------------

#
# setup aliases
#
echo "Adding aliases..."
install_file_link ".aliases"

#
# setup vim
#
echo "Configuring vim..."
install_file_link ".vimrc"
install_dir_link ".vim"
if ([ ! -d ~/.vimswap ]) then
    mkdir ~/.vimswap
fi

#
# setup git
#
echo "Configuring git..."
install_file_link ".gitconfig"

#
# setup tmux
#
echo "Configuring tmux..."
install_file_link ".tmux.conf"
