# ------------------------------------------------------------------------------
# TOOL INITIALIZATION: Activating Mise, Zoxide, and Starship
# ------------------------------------------------------------------------------

# Zoxide: Smart 'jump' navigation (Replaces cd with smarter history)
eval "$(zoxide init zsh --cmd cd)"           # Enables 'z' and allows 'cd' to jump

# Mise: Language manager (Handles Java 8/17/21, Python, etc.)
if [[ -x "$HOME/.local/bin/mise" ]]; then
    eval "$($HOME/.local/bin/mise activate zsh)"
fi

# Starship: Modern, fast, and customizable terminal prompt
# Initialized last to ensure it captures the full environment state
eval "$(starship init zsh)"