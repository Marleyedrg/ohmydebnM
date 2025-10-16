# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

# Open new terminals in the same directory as the last one
if [ -f /home/marley/.local/last_terminal_dir ] && [ -s /home/marley/.local/last_terminal_dir ]; then
  cd "$(cat /home/marley/.local/last_terminal_dir)"
fi

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
  debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color | *-256color) color_prompt=yes ;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
  if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
  else
    color_prompt=
  fi
fi

if [ "$color_prompt" = yes ]; then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm* | rxvt*)
  PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
  ;;
*) ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
#sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Created by `pipx` on 2025-10-14 19:23:06
export PATH="$PATH:/home/marley/.local/bin"

# Update PATH to include OhMyDebn binaries
if ! [[ "$PATH" =~ "$HOME/.local/share/ohmydebn/bin:" ]]; then
  export PATH="$HOME/.local/share/ohmydebn/bin:$PATH"
fi

setxkbmap -option caps:none

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Custom settings migrated from .zshrc
#
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Enable zoxide
eval "$(zoxide init bash)"

# Enable starship prompt
eval "$(starship init bash)"

# Function to print text in a random color
print_in_random_color() {
    while IFS= read -r line; do
        color_code=$((31 + RANDOM % 7))
        echo -e "\e[1;${color_code}m$line\e[0m"
    done
}

# Print current directory on new terminal
pwd | print_in_random_color

# Save the last directory for new terminals
export PROMPT_COMMAND='pwd > /home/marley/.local/last_terminal_dir'

# --- Terminal session tracking for clearing last_terminal_dir ---
TERMINAL_COUNTER_FILE="$HOME/.local/terminal_sessions"

# On shell start, increment the counter.
# Using a lock file to prevent race conditions.
(
  flock 200
  # Create the counter file if it doesn't exist.
  if [ ! -f "$TERMINAL_COUNTER_FILE" ]; then
    echo 0 > "$TERMINAL_COUNTER_FILE"
  fi
  count=$(cat "$TERMINAL_COUNTER_FILE")
  echo $((count + 1)) > "$TERMINAL_COUNTER_FILE"
) 200>"$TERMINAL_COUNTER_FILE.lock"


# Function to run on shell exit.
cleanup_terminal_session() {
  LAST_TERMINAL_DIR_FILE="$HOME/.local/last_terminal_dir"
  # Using a lock file to prevent race conditions.
  (
    flock 200
    count=$(cat "$TERMINAL_COUNTER_FILE")
    new_count=$((count - 1))
    echo "$new_count" > "$TERMINAL_COUNTER_FILE"

    # If this was the last terminal, clear the directory file.
    if [ "$new_count" -le 0 ]; then
      > "$LAST_TERMINAL_DIR_FILE"
      # Reset counter to 0 to be safe.
      echo 0 > "$TERMINAL_COUNTER_FILE"
    fi
  ) 200>"$TERMINAL_COUNTER_FILE.lock"
}

# Register the function to run on shell exit.
trap cleanup_terminal_session EXIT
# --- End of terminal session tracking ---