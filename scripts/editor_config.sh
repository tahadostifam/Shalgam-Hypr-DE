#!/bin/bash

# Install dependencies
sudo pacman -Syu --needed --noconfirm git curl ripgrep fd

# Prompt for editor choices
echo "Which editor configurations would you like to install?"
echo "1. Doom Emacs"
echo "2. Neovim"
echo "3. Both"
read -p "Enter your choice (1/2/3): " choice

# Install Doom Emacs
if [ "$choice" = "1" ] || [ "$choice" = "3" ]; then
    git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
    ~/.config/emacs/bin/doom install
fi

# Install Neovim
if [ "$choice" = "2" ] || [ "$choice" = "3" ]; then
    sudo pacman -S --needed --noconfirm neovim

    git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
fi

# Set the default editor
if [ "$choice" = "1" ] || [ "$choice" = "3" ]; then
    echo "export EDITOR='emacsclient -nw'" >> ~/.bashrc
    source ~/.bashrc
fi

echo "Installation completed."
