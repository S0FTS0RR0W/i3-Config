#!/bin/bash
set -e

# This script installs needed software and copies configuration files.
# It is intended for Arch Linux based systems.
# If you are using a different distribution, please change the package manager commands.

# update system beforehand just in case anything is out of date
echo "Updating system. Please wait."
sudo pacman -Syu

#install packages
echo "Installing required packages..."
sudo pacman -S --noconfirm i3 i3blocks kitty picom feh rofi

echo "Copying configuration files to ~/.config..."

# Get the directory where the script is located to run it from anywhere
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Create .config directory if it doesn't exist
mkdir -p ~/.config

# Copy configuration folders, overwriting existing ones
cp -rf "$SCRIPT_DIR/i3" ~/.config/
cp -rf "$SCRIPT_DIR/i3blocks" ~/.config/
cp -rf "$SCRIPT_DIR/kitty" ~/.config/
cp -rf "$SCRIPT_DIR/picom" ~/.config/

echo "Copying wallpaper..."
mkdir -p ~/Pictures
cp -f "$SCRIPT_DIR/wallhaven.png" ~/Pictures/

echo "Installation complete!"
echo "You may need to logout and log back in to see the changes."
# The i3 config should handle setting the wallpaper, but you can set it manually with:
# feh --bg-scale ~/Pictures/wallhaven.png
