# i3 Configuration

This repository contains my personal configuration files for the i3 window manager and related tools.

![Wallpaper](wallhaven.png)

## Components

*   **Window Manager:** [i3-wm](https://i3wm.org/)
*   **Status Bar:** [i3blocks](https://github.com/vivien/i3blocks)
*   **Terminal:** [Kitty](https://sw.kovidgoyal.net/kitty/)
*   **Compositor:** [Picom](https://github.com/yshui/picom)
*   **Application Launcher:** [Rofi](https://github.com/davatorium/rofi) (or dmenu, depending on i3 config)
*   **Wallpaper Setter:** [Feh](https://feh.finalrewind.org/)

## Installation

An installation script is provided to automate the setup process. The script is written for **Arch Linux** based systems.

**1. Clone the repository:**
```bash
git clone https://github.com/S0FTS0RR0W/i3-config.git
cd i3-Config
```

**2. Run the installation script:**
Make sure the script is executable, then run it.

```bash
chmod +x install.sh
./install.sh
```

The script will:
*   Install all the necessary packages using `pacman`.
*   Copy the configuration files from this repository into your `~/.config/` directory.
*   Copy the wallpaper to your `~/Pictures` directory.

After the installation, log out and log back into your i3 session to see the changes.

## Manual Installation

If you prefer to install the components manually, you can install the following packages:

```bash
sudo pacman -Syu
sudo pacman -S i3 i3blocks kitty picom feh rofi
```

Then, copy the configuration directories to your `~/.config` folder:
```bash
mkdir -p ~/.config
cp -r i3 ~/.config/
cp -r i3blocks ~/.config/
cp -r kitty ~/.config/
cp -r picom ~/.config/
```

## Customization

The configuration files will be located in your `~/.config` directory. You can edit them to your liking.

*   **i3:** `~/.config/i3/config`
*   **i3blocks:** `~/.config/i3blocks/config`
*   **Kitty:** `~/.config/kitty/kitty.conf` (and theme files)
*   **Picom:** `~/.config/picom/picom.conf`

The wallpaper is set in the i3 config file. You can change the path to your preferred wallpaper.
