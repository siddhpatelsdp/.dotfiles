#!/bin/bash
# Remove .nanorc from home directory
rm -f ~/.nanorc

# Remove the line from .bashrc that sources bashrc_custom
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc

# Remove the .TRASH directory from home
rm -rf ~/.TRASH

