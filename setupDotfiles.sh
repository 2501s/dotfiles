#!/bin/bash

# Safety-prompt
echo "Running this script will remove everything in the ~/.config folder"
echo "with the content of ~/.dotfiles/.config."

read -r -p "Do you want to continue? y/n: " userInput

if [ $userInput = "y" ]; then
    echo "The input was y"
    # mv ~/.config/ . ; ln -s ~/.dotfiles/.config ~/
fi

echo "Script finished"
