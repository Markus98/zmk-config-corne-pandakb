#!/bin/bash

# A utility script to generate the keymap image for the layout
# Requirest the keymap-drawer python utility to be installed

keymap -c keymap_image/keymap_config.yaml parse -c 12 -z config/corne.keymap > keymap_image/corne_keymap.yaml
keymap -c keymap_image/keymap_config.yaml draw keymap_image/corne_keymap.yaml > keymap_image/corne_keymap.svg
magick -size 2160x3480 -background black keymap_image/corne_keymap.svg keymap_image/corne_keymap.jpg

# Remove generated keymap yaml
rm keymap_image/corne_keymap.yaml
