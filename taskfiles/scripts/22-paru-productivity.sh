#!/bin/bash

set -uo pipefail

PKGS=(
	seahorse
	calibre
	obsidian
	vivaldi
	slack-desktop-wayland
	spotify-launcher
	ticktick
)

echo "Installing packages"

for PKG in "${PKGS[@]}"; do
	echo "Installing package: $PKG"
	paru -S "$PKG" --noconfirm --needed
done
