# pnpm home
export PNPM_HOME="$HOME/.local/share/pnpm"

# Keep PATH unique
typeset -U path

# Define PATH array
path=(
  "$HOME/.opencode/bin"
  "$PNPM_HOME"
  "$HOME/.local/share/mise/shims"
  "$HOME/.local/bin"
  $path
)