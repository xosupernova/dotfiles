# Zoxide
eval "$(zoxide init zsh --cmd cd)"

# Mise
if [[ -x "$HOME/.local/bin/mise" ]]; then
    eval "$($HOME/.local/bin/mise activate zsh)"
fi

# Starship (Keep this last)
eval "$(starship init zsh)"