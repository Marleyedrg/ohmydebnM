### This is a fork from https://github.com/dougburks/ohmydebn

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
bash install.sh 
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

## OhMyDebn

| Hotkey | Function |
|--------|----------|
| `Super + Alt + Space` | OhMyDebn menu |
| `Ctrl + Shift + O` | OhMyDebn logo |
| `Ctrl + Shift + S` | screenfetch system summary |
| `Ctrl + Super + T` | Pick a new theme |
| `Ctrl + Super + B` | Next background image for theme |

## Windows

| Hotkey | Function |
|--------|----------|

| `Alt + Tab` | Show the window selection screen |

`Shift + Tab just work in Alt + Tab mode`

| `Shift + Tab` | window selection through monitors |


| `Alt + Super + arrow_left` | Cycle backwards through open windows |

| `Alt + Super + H` | Cycle backwards through open windows |


| `Alt + Super + arrow_right` | Cycle through open windows |

| `Alt + Super + L` | Cycle through open windows |

| `Super + Left` | Push window left |
| `Super + up` | Maximize window |
| `Super + Right` | Push window right |
| `Super + Down` | Push window center |

| `Super` | menu |

| `Super + W` | Close window |
| `Super + D` | Show desktop (minimize all windows) |

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
| `Super + T` | Terminal (Alacritty) |
| `Super + B` | Browser (zen) |
| `Super + F` | File Manager (Nemo) |
| `Super + N` | Neovim |
| `Super + E` | Email (GMail) |
| `Alt + F2` | Run dialog |
| `Shift + Super + C` | Cinnamon calendar


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
