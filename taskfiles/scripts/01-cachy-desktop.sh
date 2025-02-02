#!/bin/bash

set -uo pipefail

PKGS=(
	brightnessctl
	seahorse
)

echo "Installing packages"

for PKG in "${PKGS[@]}"; do
	echo "Installing package: $PKG"
	sudo pacman -S "$PKG" --noconfirm --needed
done
