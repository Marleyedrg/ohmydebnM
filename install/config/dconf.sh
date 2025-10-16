#!/bin/bash

~/.local/share/ohmydebn/bin/ohmydebn-headline "cat" "Loading dconf settings"

dconf load /org/cinnamon/ < ~/.local/share/ohmydebn/config/dconf/cinnamon.dconf
dconf load /org/gnome/ < ~/.local/share/ohmydebn/config/dconf/gnome.dconf
dconf load /org/gtk/ < ~/.local/share/ohmydebn/config/dconf/gtk.dconf
dconf load /org/nemo/ < ~/.local/share/ohmydebn/config/dconf/nemo.dconf
