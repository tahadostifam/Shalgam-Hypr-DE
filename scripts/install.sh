#!/usr/bin/env bash

CONFIGS_LOCATION=~/.config

echo -e "\033[35mAre you sure you want to install this HyprLand theme on your Linux distro? [Y, n]\033[0m \c"

read -r VERIFY_INSTALLATION

if [[ "$VERIFY_INSTALLATION" =~ ^[Yy]$ ]]; then
    cp ./configs/* $CONFIGS_LOCATION
    cp ./configs/nwg-bar/style.css $CONFIGS_LOCATION/nwg-bar/style.css
    cp ./configs/nwg-bar/bar.json $CONFIGS_LOCATION/nwg-bar/bar.json
    chmod +x $HOME/.config/hypr/scripts/tools/*
    chmod +x $HOME/.config/hypr/scripts/*
    chmod +x $HOME/.config/hypr/*

    echo -e "\033[32mInstalled successfully!🌵 \033[0m"
else
    echo -e "\033[35mNot installed.\033[0m"
fi

