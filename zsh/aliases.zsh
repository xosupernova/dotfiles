# shellcheck shell=zsh
# ------------------------------------------------------------------------------
# ALIASES: Shortcuts for faster terminal usage
# ------------------------------------------------------------------------------

# VSCodium: Launch the Flatpak version of Codium
alias vsc="flatpak run com.vscodium.codium --ozone-platform-hint=auto --enable-features=WaylandWindowDecorations 2>/dev/null"
alias code="vsc"                             # Standard 'code' command shortcut

# System Updates: Sync repositories, upgrade packages, and clean cache
alias update="sudo pacman -Syu"              # Full system upgrade
alias paclean="sudo rm -fr /var/cache/pacman/pkg/download-* && sudo pacman -Sc"   # Clear old package cache to save disk space and remove stuck downloads

# Modern CLI Replacements:
alias cat="bat"                              # Better 'cat' with syntax highlighting
alias ls="eza --icons --group-directories-first"    # Modern 'ls' with file icons
alias lsh="eza --icons --group-directories-first -a" # Show hidden files as well
alias ll="eza --icons --group-directories-first -lh" # Detailed list view
alias top="btop"                             # Beautiful CPU/GPU/RAM dashboard
alias help="tldr"                            # Simple, example-based man pages

# Terminal-Specific Extras:
alias icat="kitty +kitten icat"              # View images directly in Kitty terminal
alias kssh="kitty +kitten ssh"               # SSH that maintains Kitty terminfo
alias kprofile="konsole --profile"           # Launch Konsole with a specific profile
alias kedit="nano ~/.local/share/konsole/*.profile" # Fast edit for Konsole profiles
alias fetch="zsh ~/.dotfiles/fastfetch/fetch_spotify.sh"

# Git Shortcuts:
alias gs="git status"                        # Check current branch status
alias ga="git add ."                         # Stage all changes in current folder
alias gc="git commit -m"                     # Commit with message (Usage: gc "msg")
alias gp="git push"                          # Push changes to remote

# SSH & Dotfiles:
alias copypub="cat ~/.ssh/id_ed25519.pub | wl-copy" # Copy public key to clipboard (Wayland)
alias dots="git -C ~/.dotfiles"              # Manage dotfiles repo from anywhere
alias dotedit="code ~/.dotfiles"        # Edit dotfiles via vscodium
alias dotpush="git -C ~/.dotfiles push"      # Push dotfile changes to remote

# Safety: Prevent accidental deletions or overwrites
alias rm="rm -i"                             # Prompt before every removal
alias cp="cp -i"                             # Prompt before overwriting during copy
alias mv="mv -i"                             # Prompt before overwriting during move

# Power Tools:
alias fuckyou='sudo $(fc -ln -1)'            # Re-run the last command with sudo
alias path='echo $PATH | tr ":" "\n"'         # List system PATH directories line-by-line
alias myip="hostname -I | awk '{print \$1}' && curl -s ifconfig.me && echo" # Local & Public IP
alias ports="sudo lsof -iTCP -sTCP:LISTEN -P -n" # Show apps listening on network ports
alias usage="du -sh * | sort -h"              # Show folder/file sizes in current dir
alias zconf="nano ~/.zsh/zshrc"               # Fast edit for the main config file
alias reload="source ~/.zshrc"               # Apply changes to this config immediately