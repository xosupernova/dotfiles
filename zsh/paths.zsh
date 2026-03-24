# shellcheck shell=zsh

# ------------------------------------------------------------------------------
# PATH & ENVIRONMENT: Sourced via load_config "$HOME/.zsh/paths.zsh"
# ------------------------------------------------------------------------------

export PNPM_HOME="$HOME/.local/share/pnpm"

export PATH="$HOME/.opencode/bin:$PNPM_HOME:$HOME/.local/share/mise/shims:$HOME/.local/bin:$PATH"