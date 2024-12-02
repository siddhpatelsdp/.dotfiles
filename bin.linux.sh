#!/bin/bash
# Check if the OS is Linux
if [ "$(uname)" != "Linux" ]; then
    echo "Error: Script can only run on Linux" >> linuxsetup.log
    exit 1
fi

# Create the .TRASH directory if it doesn't exist
mkdir -p ~/.TRASH

# Backup the current .nanorc if it exists
if [ -f ~/.nanorc ]; then
    mv ~/.nanorc ~/.bup_nanorc
    echo "Renamed existing .nanorc to .bup_nanorc" >> linuxsetup.log
fi

# Copy the new .nanorc configuration from etc/nanorc to home directory
cp ~/.dotfiles/etc/nanorc ~/.nanorc

# Update .bashrc to source bashrc_custom
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

