#!/usr/bin/env bash

if ! command -v sass &> /dev/null
then
    sudo npm i -g sass
fi

sass --no-source-map ~/.config/hypr/component/waybar/scss/style.scss ~/.config/hypr/component/waybar/style.css