#!/bin/bash

set -uo pipefail

PKGS=(
	# Gnome by default installs a lot of packages unnecessary to me, its possible I remove some
	# Examples: epiphany, gnome-contacts, malcontent, gnome-tour
	# Others might not be possible, like: nautilus
	gnome
	gnome-tweaks
	xclip
)

echo "Installing packages"

for PKG in "${PKGS[@]}"; do
	echo "Installing package: $PKG"
	sudo pacman -S "$PKG" --noconfirm --needed
done
