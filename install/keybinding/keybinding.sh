#!/bin/bash

STATE_DIR=~/.local/state/ohmydebn-config
KEYBINDING_STATE=$STATE_DIR/keybinding-20260922

if [ ! -f "$KEYBINDING_STATE" ]; then
  ~/.local/share/ohmydebn/bin/ohmydebn-headline "tte rain" "Updating hotkeys"

  KEYBINDING_DIR=~/.local/share/ohmydebn/install/keybinding
  KEYBINDING_CINNAMON=$KEYBINDING_DIR/keybinding-cinnamon.txt
  KEYBINDING_CUSTOM=$KEYBINDING_DIR/keybinding-custom.txt

  keybinding-cinnamon() {
    echo "$4"
    gsettings set "org.cinnamon.desktop.keybindings.$1" "$2" "$3"
  }

  keybinding-custom() {
    echo "$5"
    gsettings set "org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom-$1/" name "$2"
    gsettings set "org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom-$1/" command "$3"
    gsettings set "org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom-$1/" binding "$4"
  }

  # To create new custom keybindings, first specify how many custom keybindings we're going to load
  CUSTOM_KEYBINDING_TOTAL=$(wc -l < "$KEYBINDING_CUSTOM")
  ((CUSTOM_KEYBINDING_TOTAL--))
  CUSTOM_LIST="["
  for i in $(seq 0 "$CUSTOM_KEYBINDING_TOTAL"); do 
    CUSTOM_LIST+="'custom-$i'"
    if [ "$i" != "$CUSTOM_KEYBINDING_TOTAL" ]; then
      CUSTOM_LIST+=", "
    else
      CUSTOM_LIST+="]"
    fi
  done
  gsettings set org.cinnamon.desktop.keybindings custom-list "$CUSTOM_LIST"

  # Update all keybindings and sort the output for display
  (source "$KEYBINDING_CINNAMON"; source "$KEYBINDING_CUSTOM") | grep -v "Removing" | sort

  # Apply keybindings
  if pgrep -x cinnamon >/dev/null; then
    ~/.local/share/ohmydebn/bin/ohmydebn-headline "tte rain" "Restarting desktop to apply hotkey configuration"
    sleep 1s
    setsid /usr/bin/cinnamon --replace >/dev/null 2>&1 &
    echo "You can see all hotkeys by pressing Super + K"
  fi

  mkdir -p "$STATE_DIR"
  touch "$KEYBINDING_STATE"
fi