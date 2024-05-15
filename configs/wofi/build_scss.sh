#!/usr/bin/env bash

if ! command -v sass &> /dev/null
then
    sudo npm i -g sass
fi

sass --no-source-map ~/.config/wofi/scss/powermenu.scss ~/.config/wofi/powermenu.css