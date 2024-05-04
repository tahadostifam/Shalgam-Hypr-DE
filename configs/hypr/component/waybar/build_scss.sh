#!/usr/bin/env bash

if ! command -v sass &> /dev/null
then
    sudo npm i -g sass
fi

sass --no-source-map ~/.config/wofi/scss/style.scss ~/.config/wofi/style.css