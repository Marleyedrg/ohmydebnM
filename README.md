

OhMyDebn requires the following:
- x86_64 or ARM architecture
- 2GB RAM MINIMUM (more is obviously better)
- 2 CPU cores MINIMUM (more is obviously better)
- Debian 13
- non-root user account with sudo privileges
- curl
- ability to connect to Github, package repos, and other Internet sites
  
# Warnings

- OhMyDebn is intended for a clean new installation
- OhMyDebn may make changes to your APT configuration
- OhMyDebn will remove apps like FireFox, Thunderbird, and others (unless you use the `--no-uninstall` option)
- OhMyDebn is a fun project and is not officially supported. If it breaks your system, you get to keep both pieces!

# Installation

For the quickest and easiest installation, the best option is to start with the Debian Live 13 Cinnamon ISO image on x86_64 hardware. If for some reason that doesn't work for your use case, see the alternative installation options below.

1. Download the Debian Live 13 Cinnamon ISO image from https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/ and install it. Reboot into your newly installed Debian 13 Cinnamon and the default desktop should look like this:
![debian-cinnamon screenshot](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/debian-cinnamon.png)
2. In your Debian 13 Cinnamon desktop, download the installation script:
```
git clone git@github.com:Marleyedrg/ohmydebn.git
```
3. Once you have reviewed install.sh and the rest of the code in this repo, you can run the install script:
```
cd ohmydebn
```
## Installation Options

The installation script supports the following option:

- `--no-uninstall` - installs OhMyDebn without removing existing packages like Firefox, Thunderbird, etc.

Example:
```
bash install.sh --no-uninstall
```
# After Installation

Once installation completes, you can enjoy your new OhMyDebn desktop!

![OhMyDebn screenshot](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn.png)

# Alternative installations

## Debian 13 Minimal

Instead of starting from a Debian Live 13 Cinnamon ISO image, an alternative is to start from a Debian 13 minimal netinst installer on x86_64 or ARM64 hardware. Once the Debian netinst installer completes, reboot into your new installation and then start our installer as shown above. It will automatically install the necessary Cinnamon desktop packages and continue on with OhMyDebn installation. Once installation is complete, reboot and enjoy your new OhMyDebn desktop!

## Raspberry Pi

For best results, we recommend a Raspberry Pi 5 with SSD and at least 4GB RAM.

The default OS for Raspberry Pi is Raspberry Pi OS and the latest version is based on Debian 13. Once you're running this version and are connected to the Internet, you can run our installer as shown above. It will automatically update /etc/lightdm/lightdm.conf to log into our Cinnamon desktop. Once our installer is complete, reboot and enjoy your new OhMyDebn desktop!

If you are running an older Raspberry Pi or the desktop otherwise feels sluggish, consider disabling desktop effects. Instructions can be found later in a separate section below.

## Proxmox 9

Proxmox 9 is based on Debian 13 and will work with our installer as well.

WARNING! We do not recommend installing OhMyDebn on a production Proxmox server! However, Proxmox + OhMyDebn makes for an amazing personal virtualization workstation.

In order to install on Proxmox 9, you will need to take care of a few prerequisites:

1. Make sure that Proxmox has full access to APT repos. By default, Proxmox is configured to use Proxmox subscription repos. If you don't have a subscription, then you will need to change to the no-subscription repo. For more information, please see https://pve.proxmox.com/wiki/Package_Repositories.
2. Make sure that sudo is installed (`apt -y install sudo`).
3. Make sure that you have a non-root user account (for example: `adduser yourusername`).
4. Make sure that your non-root user account has sudo privileges (for example: `usermod -aG sudo yourusername`).
5. Login as your non-root user account.
6. Start the installation as shown above.
7. Once the installation completes, reboot (`sudo reboot`), login as your non-root user, and enjoy your new OhMyDebn desktop!

# OhMyDebn Menu

The OhMyDebn menu allows you to launch apps, learn about OhMyDebn, and configure and control the system. You can activate this menu by pressing `Super + Alt + Space`.

![OhMyDebn Menu](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-menu.png)

# Launch applications via Rofi

To run applications, you can select `Apps` from the OhMyDebn menu or just press `Super + Space` to bring up the Rofi application launcher directly. You can then use arrow keys to select which application you'd like to run or start typing the first few letters of the application name.

![OhMyDebn Rofi](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-rofi.png)

# Web browser

To start a web browser, you can open it from the traditional program menu, from the Rofi application launcher, or just press `Super + B`. This launches [Chromium](https://www.chromium.org/Home/) with the uBlock Origin Lite content blocker already installed for you.

![OhMyDebn chromium web browser with uBlock Origin Lite content blocker](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-chromium-ublock.png)
If you prefer Google Chrome or Firefox, you can install them by going to [OhMyDebn Menu](#ohmydebn-menu) -> Install -> Browser.

# OhMyDebn Logo

To show the OhMyDebn logo in all of its glory, press `Ctrl + Shift + O`.

![OhMyDebn logo gui](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-logo-gui.png)

# OhMyDebn Demo

To show an animated OhMyDebn logo demo, press `Ctrl + Alt + D`.

![OhMyDebn animated logo demo](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-demo.gif)

# System summary via screenfetch

To see a system summary, press `Ctrl + Shift + S` to launch screenfetch.

![OhMyDebn system summary via screenfetch](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-screenfetch-gui.png)

# System monitoring via btop

To monitor your system performance, press `Super + T` to launch btop.

![OhMyDebn btop](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-btop.png)

# Audio visualizer via Cava

To visualize your system audio, press `Ctrl + Shift + A` to launch Cava.

![OhMyDebn Cava audio visualizer](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-cava-audio.png)
# Window Tiling

The Cinnamon desktop environment includes basic window tiling:
- Press `Super + Left` to make the active window tile to the left half of the screen.
- Press `Super + Right` to make the active window tile to the right half of the screen.
- Press `Super + Up` to make the active window tile to the top half of the screen.
- Press `Super + Down` to make the active window tile to the bottom half of the screen.
- You can tile to a corner by combining these options. For example, to tile to the upper right corner, hold the `Super` key and then press the Up arrow and then the Right arrow.
- Cinnamon's basic window tiling has no window gaps so it maximizes your screen area and is especially helpful when working on smaller screens like laptops.

![OhMyDebn Cinnamon window tiling](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-cinnamon-tiling.png)

For more advanced window tiling options, we've included a custom version of the gTile extension:
- Pressing `Ctrl-Shift-G` will display the gTile overlay and give you several options for tiling the active window.
- The default grid options are 2x2, 3x2, 4x4, or 6x6. You can select a different grid option with the mouse or by pressing `1`, `2`, `3`, or `4`. You can modify these default grid options by going to the gTile extension settings.
- Select the starting tile by pressing the letter associated with that tile and then select the ending tile by pressing the letter associated with that tile. For example, to tile the window to the left half of the screen in a 4x4 grid, press `a` and then `n`.
- To set the window to a single tile, press the letter twice. For example, to tile to the upper left corner, press `a` twice.

![OhMyDebn gTile window tiling](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-gtile.png)

To configure gTile:
- go to System Settings -> Extensions
- next to gTile, click the Configure button
- click the Behavior tab

![OhMyDebn gTile settings](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-gtile-settings.png)

There are also hotkeys for common tiling options that leverage gTile for window gaps:
- Press `Ctrl + Shift + 1 (numeric keypad)` to tile to bottom left corner with gaps.
- Press `Ctrl + Shift + 2 (numeric keypad)` or `Ctrl + Shift + Down` to tile to bottom half with gaps.
- Press `Ctrl + Shift + 3 (numeric keypad)` to tile to bottom right corner with gaps.
- Press `Ctrl + Shift + 4 (numeric keypad)` or `Ctrl + Shift + Left` to tile to left half with gaps.
- Press `Ctrl + Shift + 5 (numeric keypad)` or `Ctrl + Shift + Enter` to tile to full screen with gaps.
- Press `Ctrl + Shift + 6 (numeric keypad)` or `Ctrl + Shift + Right` to tile to right half with gaps.
- Press `Ctrl + Shift + 7 (numeric keypad)` to tile to top left corner with gaps.
- Press `Ctrl + Shift + 8 (numeric keypad)` or `Ctrl + Shift + Up` to tile to top half with gaps.
- Press `Ctrl + Shift + 9 (numeric keypad)` to tile to top right corner with gaps.

For example, to lay out windows like in the following screenshot:
- Press `Ctrl + Shift + O` to display the OhMyDebn logo and then `Ctrl + Shift 7` to tile to the upper left corner.
- Press `Ctrl + Shift + S` to display the screenfetch window and then `Ctrl + Shift + 1` to tile to the lower left corner.
- Press `Super + T` to start btop and then `Ctrl + Shift + 9` to tile to the upper right corner.
- Launch VSCode and then press `Ctrl + Shift + 3` to tile to the lower right corner.

![OhMyDebn gTile window tiling with gaps](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn.png)

# Desktop Themes

You can change the desktop theme by pressing `Ctrl + Super + T`. This will bring up a list of installed themes including the default Ohmydebn theme and several themes from Omarchy. There are also options at the end of the list titled `Next Background`, `Install Theme from URL`, `Build New Theme`, and `Remove Theme`.

![OhMyDebn desktop themes](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-theme-set-gui.png)

Some themes include multiple background options. If the theme you select has multiple backgrounds, you can switch to the next background by selecting the `Next Background` option from the menu. Alternatively, you can press `Ctrl + Super + B` at any time.

The `Install Theme from URL` option allows you to install new themes from a URL.

![OhMyDebn theme install](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-theme-install.png)

The `Build New Theme` option allows you to build your own theme using the [Aether](https://github.com/bjarneo/aether) theme builder.

![OhMyDebn theme build 1](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-aether-1.png)
![OhMyDebn theme build 2](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-aether-2.png)
![OhMyDebn theme build 3](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-aether-3.png)
![OhMyDebn theme build 4](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-aether-4.png)

The `Remove Theme` option allows you to remove any extra themes that you've installed.

![OhMyDebn theme remove](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-theme-remove.png)

Here are some screenshots of the themes included from Omarchy.

Catppuccin theme:

![OhMyDebn with catppuccin theme](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-theme-catppuccin.png)

Catppuccin Latte theme:

![OhMyDebn with catppuccin latte theme](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-theme-catppuccin-latte.png)

Everforest theme:

![OhMyDebn with everforest theme](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-theme-everforest.png)

Gruvbox theme:

![OhMyDebn with gruvbox theme](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-theme-gruvbox.png)

Kanagawa theme:

![OhMyDebn with kanagawa theme](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-theme-kanagawa.png)

Matte Black theme:

![OhMyDebn with matte black theme](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-theme-matte-black.png)

Nord theme:

![OhMyDebn with nord theme](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-theme-nord.png)

Osaka Jade theme:

![OhMyDebn with osaka jade theme](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-theme-osaka-jade.png)

Ristretto theme:

![OhMyDebn with ristretto theme](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-theme-ristretto.png)

Rose Pine theme:

![OhMyDebn with rose pine theme](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-theme-rose-pine.png)

Tokyo Night theme:

![OhMyDebn with tokyo night theme](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-theme-tokyo-night.png)

# Terminal

To start a terminal session, press `Super + Enter`. This launches a beautiful and powerful [Alacritty](https://alacritty.org) terminal window that includes:
- Caskaydia Nerd Fonts
- [Zsh](https://en.wikipedia.org/wiki/Z_shell) shell with [Oh My Zsh](https://ohmyz.sh/)
- [Starship](https://starship.rs/) shell prompt with modified [Catppuccin theme](https://github.com/catppuccin/starship)
- [Zoxide](https://github.com/ajeetdsouza/zoxide) for a smarter `cd` command
- [eza](https://github.com/eza-community/eza) for beautiful directory listings via `ls` and `lt`

![OhMyDebn terminal screenshot](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-terminal.png)

It also includes [bat](https://github.com/sharkdp/bat), which is a `cat` clone with syntax highlighting and git integration. It is configured with the beautiful [Catppuccin theme](https://github.com/catppuccin/bat).

![OhMyDebn bat screenshot](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-bat.png)

# Updating

To update to the latest version of OhMyDebn, run `ohmydebn-update`. This will update the git repo, config files, and packages.

# Resetting

To reset your config files to OhMyDebn defaults, run `ohmydebn-reset-config`. This will automatically create backup copies of your current config files and then write new ones.

# Text editor

To start a text editor, press `Super + N`. This launches the beautiful and powerful combination of Neovim with LazyVim. The first time it loads, it will install several plugins. Once that is done, you can press the `Q` key until you get to the main menu. You can then press the space bar and then the `E` key to open Explorer.

![OhMyDebn Neovim screenshot](https://raw.githubusercontent.com/dougburks/ohmydebn-docs/refs/heads/main/images/ohmydebn-neovim.png)

The hotkeys section below includes more hotkeys for Neovim and a link to additional information.

You can also install VSCode from the OhMyDebn menu.

# Documents

LibreOffice is installed to handle common file types like documents and spreadsheets. For PDF files, Evince is the default PDF viewer. If you need to annotate a PDF, you can use the included Xournal++.

# Firewall

OhMyDebn includes [ufw](https://help.ubuntu.com/community/UFW) and configures it to deny inbound traffic. For more information about ufw, please see https://help.ubuntu.com/community/UFW.

# Desktop Effects

Desktop and window effects are enabled by default. If you would like to disable them, go to System Settings, click Effects, and then click the slider next to `Desktop and window effects` to disable.

# Screen Magnifier

If you need to zoom in on part of your screen, you can do so by enabling the magnifier via [OhMyDebn Menu](#ohmydebn-menu). Once enabled, hold down the Alt key and then use your scroll wheel to zoom in and out.

# Hotkeys

Pressing `Super + K` will open Chromium and navigate to this list of keyboard bindings.

## OhMyDebn

| Hotkey | Function |
|--------|----------|
| `Super + Alt + Space` | OhMyDebn menu |
| `Ctrl + Shift + G` | gTile window tiling |
| `Ctrl + Shift + O` | OhMyDebn logo |
| `Ctrl + Shift + S` | screenfetch system summary |
| `Ctrl + Shift + A` | audio visualizer (Cava) |
| `Ctrl + Super + T` | Pick a new theme |
| `Ctrl + Super + B` | Next background image for theme |

## Windows

| Hotkey | Function |
|--------|----------|
| `Alt + Tab` | Cycle through open windows |
| `Shift + Alt + Tab` | Cycle backwards through open windows |
| `Ctrl + Alt + Tab` | Cycle through open windows with more info |
| `Alt + Space` | Activate window menu |
| `Alt + F7` | Move window |
| `Super + W` | Close window |
| `Super + D` | Show desktop (minimize all windows) |
| `Super + Left` | Push window left |
| `Super + Right` | Push window right |
| `Super + Up` | Push window up |
| `Super + Down` | Push window down |
| `Super + PageUp` | Maximize window |
| `Super + PageDown` | Minimize window |
| `Ctrl + Alt + Down` | Window selection |
| `Ctrl + Shift + G` | gTile window tiling |
| `Ctrl + Shift + 1 (numeric keypad)` | Tile to bottom left corner with gaps |
| `Ctrl + Shift + 2 (numeric keypad)` | Tile to bottom half with gaps |
| `Ctrl + Shift + 3 (numeric keypad)` | Tile to bottom right corner with gaps |
| `Ctrl + Shift + 4 (numeric keypad)` | Tile to left half with gaps |
| `Ctrl + Shift + 5 (numeric keypad)` | Tile to full screen with gaps |
| `Ctrl + Shift + 6 (numeric keypad)` | Tile to right half with gaps |
| `Ctrl + Shift + 7 (numeric keypad)` | Tile to top left corner with gaps |
| `Ctrl + Shift + 8 (numeric keypad)` | Tile to top half with gaps |
| `Ctrl + Shift + 9 (numeric keypad)` | Tile to top right corner with gaps |
| `Ctrl + Shift + Down` | Tile to bottom half with gaps |
| `Ctrl + Shift + Left` | Tile to left half with gaps |
| `Ctrl + Shift + Enter` | Tile to full screen with gaps |
| `Ctrl + Shift + Right` | Tile to right half with gaps |
| `Ctrl + Shift + Up` | Tile to top half with gaps |

## Workspaces

| Hotkey | Function |
|--------|----------|
| `Super + 1` | Switch to workspace 1 |
| `Super + 2` | Switch to workspace 2 |
| `Super + 3` | Switch to workspace 3 |
| `Super + 4` | Switch to workspace 4 |
| `Ctrl + Alt + Up` | Workspace selection |
| `Ctrl + Alt + Left` | Switch to left workspace |
| `Ctrl + Alt + Right` | Switch to right workspace |
| `Shift + Ctrl + Alt + Left` | Move window to left workspace |
| `Shift + Ctrl + Alt + Right` | Move window to right workspace |

## System

| Hotkey | Function |
|--------|----------|
| `Ctrl + Alt + L` | Lock screen |
| `Ctrl + Alt + Del` | Logout |
| `Ctrl + Alt + End` | Shut down |
| `Ctrl + Alt + Escape` | Restart Cinnamon desktop |

## Apps

| Hotkey | Function |
|--------|----------|
| `Super + Space` | Application Launcher (Rofi) |
| `Super + Return` | Terminal (Alacritty) |
| `Super + A` | AI (Grok) |
| `Super + B` | Browser (Chromium) |
| `Super + F` | File Manager (Nemo) |
| `Super + G` | Google search |
| `Super + T` | btop |
| `Super + N` | Neovim |
| `Super + O` | ohmydebn.org |
| `Super + E` | Email (GMail) |
| `Super + C` | Calendar (Google Calendar) |
| `Super + X` | X.com |
| `Alt + F2` | Run dialog |
| `Shift + Super + C` | Cinnamon calendar

## Browser (Chromium)

| Hotkey | Function |
|--------|----------|
| `Ctrl + Shift + B` | Toggle bookmark list |
| `Ctrl + T` | New tab |
| `Ctrl + N` | New window |
| `Ctrl + Shift + N` | New Incognito window |
| `Ctrl + W` | Close tab |
| `Ctrl + Shift + T` | Restore tab |

## Password and Bookmark Management (KeePassXC)

| Hotkey | Function |
|--------|----------|
| `Ctrl + Shift + K` | Open or activate KeePassXC |
| `Ctrl + Shift + U` | Open browser tab to selected URL |
| `Ctrl + Shift + P` | Auto-type username and password for selected site |
| `Ctrl + N` | Create a new entry in KeePassXC |
| `Ctrl + E` | Edit entry |
| `Ctrl + B` | Copy username |
| `Ctrl + C` | Copy password |
| `Ctrl + U` | Copy URL |

## Configuration

| Hotkey | Function |
|--------|----------|
| `Shift + Super + N` | Network Manager |
| `Shift + Super + S` | Sound menu |

## Capture

| Hotkey | Function |
|--------|----------|
| `Shift + Print` | Take a screenshot of an area |
| `Ctrl + Shift + Print` | Copy a screenshot of an area to clipboard |
| `Print` | Take a screenshot |
| `Ctrl + Print` | Copy a screenshot to clipboard |
| `Alt + Print` | Take a screenshot of a window |
| `Ctrl + Alt + Print` | Copy a screenshot of a window to clipboard |

## Notifications

| Hotkey | Function |
|--------|----------|
| `Ctrl + Shift + Super + N` | Show notifications |
| `Ctrl + Shift + Super + C` | Clear notifications |

## Neovim (with LazyVim)

### Navigation

| Hotkey | Function |
|--------|----------|
| `Space` | Show command options |
| `Space Space` | Open file via fuzzy search |
| `Space E` |	Toggle sidebar |
| `Space G G` | Show git controls |
| `Space S G` | Search file content |
| `Ctrl + W W` | Jump between sidebar and editor |
| `Ctrl + Left/right arrow` | Change size of sidebar |
| `Shift + H` | Go to left file tab |
| `Shift + L` | Go to right file tab |
| `Space B D` | Close file tab |

### While in sidebar

| Hotkey | Function |
|--------|----------|
| `A` | Add new file in parent dir |
| `Shift + A` | Add new subdir in parent dir |
| `D` | Delete highlighted file/dir |
| `M` | Move highlighted file/dir |
| `R` | Rename highlighted file/dir |
| `?` | Show help for all commands |

For the full list of all Neovim hotkeys configured by LazyVim, please see https://www.lazyvim.org/keymaps.

# Relationship to Security Onion

OhMyDebn is not directly related to the [Security Onion](https://github.com/Security-Onion-Solutions/securityonion) project. OhMyDebn is sponsored by [Security Onion Solutions](https://securityonion.com) (SOS); however, SOS does not provide any technical support for it. OhMyDebn is intended to provide a general purpose desktop environment so, of course, you could use the included Chromium web browser to connect to your [Security Onion Console](https://docs.securityonion.net/en/2.4/soc.html)!

# Acknowledgements

Thanks to the following!

- My dad for introducing me to computers
- [Linus Torvalds](https://github.com/torvalds) for the Linux kernel and git
- [Debian](https://debian.org) for an amazingly versatile Linux distribution
- [Linux Mint](https://linuxmint.com/) for the Cinnamon desktop environment and Mint themes
- [DHH](https://dhh.dk/) and his [Omakub](https://omakub.org/) and [Omarchy](https://omarchy.org/) projects for inspiration
- [Fausto Korpsvart](https://github.com/Fausto-Korpsvart) for beautiful themes specific to our color schemes
- [Bjarne Øverli](https://github.com/bjarneo) for the [Aether](https://github.com/bjarneo/aether) theme builder
