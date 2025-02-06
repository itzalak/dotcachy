#!/bin/bash

set -uo pipefail

PKGS=(
	hyprland
	dunst
	kitty
	xdg-desktop-portal-hyprland
	xdg-desktop-portal-gtk
	qt5-wayland
	qt6-wayland
	polkit-kde-agent
	grim
	slurp
	# Others
	waybar
	wpaperd
	cliphist
	fuzzel
	nwg-look
)

echo "Installing packages"

for PKG in "${PKGS[@]}"; do
	echo "Installing package: $PKG"
	sudo pacman -S "$PKG" --noconfirm --needed
done

PARUPKGS=(
	hyprland-qtutils
	hyprsunset
	bemoji
)

echo "Installing hypr AUR packages"

for PPKG in "${PARUPKGS[@]}"; do
	echo "Installing package: $PPKG"
	yay -S "$PPKG" --noconfirm --needed
done

echo "Packages installed"
