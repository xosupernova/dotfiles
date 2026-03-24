# ------------------------------------------------------------------------------
# PATHS & ENVIRONMENT: Tells the system where to find your apps
# ------------------------------------------------------------------------------

# pnpm: Node.js package manager home
export PNPM_HOME="$HOME/.local/share/pnpm"

# typeset -U ensures the PATH stays unique (no duplicate folders)
typeset -U path

# Use Zsh's built-in array handling for a cleaner PATH
path=(
  "$HOME/.opencode/bin"                      # Opencode Specific Path: Priority tools
  "$PNPM_HOME"                               # pnpm: Binary path
  "$HOME/.local/share/mise/shims"            # Mise Shims: Java/Python versions
  "$HOME/.local/bin"                         # Standard user binaries
  $path                                      # Keep existing system paths
)