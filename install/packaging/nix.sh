#!/bin/bash

if ! command -v nix >/dev/null 2>&1; then
  ~/.local/share/ohmydebn/bin/ohmydebn-headline "cat" "Installing Nix Package Manager"
  sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon
fi