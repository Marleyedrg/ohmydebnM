#!/bin/bash

OHMYDEBN_INSTALL=~/.local/share/ohmydebn/install

# Preflight
source $OHMYDEBN_INSTALL/preflight/set.sh
source $OHMYDEBN_INSTALL/preflight/os.sh
source $OHMYDEBN_INSTALL/preflight/user.sh
source $OHMYDEBN_INSTALL/preflight/arguments.sh
source $OHMYDEBN_INSTALL/preflight/warning.sh
source $OHMYDEBN_INSTALL/preflight/path.sh
source $OHMYDEBN_INSTALL/preflight/effects.sh

# Packaging
source $OHMYDEBN_INSTALL/packaging/cinnamon.sh
source $OHMYDEBN_INSTALL/packaging/dbus.sh
source $OHMYDEBN_INSTALL/packaging/components.sh
source $OHMYDEBN_INSTALL/packaging/remove.sh

# Config
source $OHMYDEBN_INSTALL/config/alacritty.sh
source $OHMYDEBN_INSTALL/config/bat.sh
source $OHMYDEBN_INSTALL/config/btop.sh
source $OHMYDEBN_INSTALL/config/caskaydia.sh
source $OHMYDEBN_INSTALL/config/cava.sh
source $OHMYDEBN_INSTALL/config/chromium.sh
source $OHMYDEBN_INSTALL/config/cinnamon.sh
source $OHMYDEBN_INSTALL/config/cursor.sh
source $OHMYDEBN_INSTALL/config/gedit.sh
source $OHMYDEBN_INSTALL/config/git.sh
source $OHMYDEBN_INSTALL/config/keepassxc.sh
source $OHMYDEBN_INSTALL/config/logo.sh
source $OHMYDEBN_INSTALL/config/menu.sh
source $OHMYDEBN_INSTALL/config/mimetypes.sh
source $OHMYDEBN_INSTALL/config/nvim.sh
source $OHMYDEBN_INSTALL/config/ohmyzsh.sh
source $OHMYDEBN_INSTALL/config/rofi.sh
source $OHMYDEBN_INSTALL/config/theme.sh
source $OHMYDEBN_INSTALL/config/ufw.sh
source $OHMYDEBN_INSTALL/config/zsh.sh

# Cleanup
source $OHMYDEBN_INSTALL/cleanup/usr-local-bin.sh
source $OHMYDEBN_INSTALL/cleanup/theme-symlink.sh

# Finalization
source $OHMYDEBN_INSTALL/finalization/updates.sh
source $OHMYDEBN_INSTALL/finalization/hotkeys.sh
source $OHMYDEBN_INSTALL/finalization/lightdm.sh
source $OHMYDEBN_INSTALL/finalization/finale.sh
