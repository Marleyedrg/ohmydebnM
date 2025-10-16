#!/bin/bash

~/.local/share/ohmydebn/bin/ohmydebn-headline "cat" "Configuring Flatpak"
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub app.zen_browser.zen || echo "Zen Browser install skipped or failed."