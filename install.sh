#!/usr/bin/bash

echo "Installing dotfiles"

source install/link.sh

if [ -f "/etc/arch-release" ] ; then
    source install/arch.sh
fi

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "DONE."
