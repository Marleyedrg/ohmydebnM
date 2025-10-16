#!/bin/bash

~/.local/share/ohmydebn/bin/ohmydebn-headline "cat" "Configuring bash"

cp -av ~/.local/share/ohmydebn/config/.bashrc ~/
cp -av ~/.local/share/ohmydebn/config/.bash_aliases ~/
cp -av ~/.local/share/ohmydebn/config/.profile ~/

if [ "$SHELL" != "/bin/bash" ]; then
  ~/.local/share/ohmydebn/bin/ohmydebn-headline "cat" "Setting bash as default shell"
  sudo chsh -s /bin/bash "$(whoami)"
fi
