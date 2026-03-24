# ==============================================================================
# ZSH CONFIGURATION (CachyOS / xo_supernova Setup)
# ==============================================================================

# Oh My Zsh: Core framework initialization
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="" 
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Load Modular Configs
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/paths.zsh ]]   && source ~/.zsh/paths.zsh
[[ -f ~/.zsh/init.zsh ]]    && source ~/.zsh/init.zsh

# ------------------------------------------------------------------------------
# POST-INIT: Visuals
# ------------------------------------------------------------------------------
if [[ "$TERM" == "xterm-kitty" ]]; then
    fastfetch --config ~/.config/fastfetch/config.jsonc
elif [[ -n "$KONSOLE_VERSION" ]]; then
    fastfetch --logo arch2
else
    fastfetch
fi