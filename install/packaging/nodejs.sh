#!/bin/bash

if ! command -v node >/dev/null 2>&1; then
  ~/.local/share/ohmydebn/bin/ohmydebn-headline "cat" "Adding Node.js repository"
  curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
fi