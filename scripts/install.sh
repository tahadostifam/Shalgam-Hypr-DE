#!/usr/bin/env bash

if [ "$(command -v jp2a)" ]; then
    jp2a ./images/shalgam.png
    echo -e "\n"
fi

echo -e "\033[35mAre you sure you want to install Shalgam on your Linux distro? [Y, n]\033[0m"

read -r VERIFY_INSTALLATION

if [[ -z "$VERIFY_INSTALLATION" || "$VERIFY_INSTALLATION" =~ ^[Yy]$ ]]; then
    # Copy config files to local system
    bash ./scripts/install_config_files.sh

    echo -e "\033[32m\nShalgam installed successfully!🌵 \033[0m"
else
    echo -e "\033[35mBad command!\033[0m"
fi

