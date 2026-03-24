#!/bin/bash
# xo_supernova Dotfiles Linker Script

echo "🔗 Linking configuration files..."

# Create necessary directories
mkdir -p ~/.zsh
mkdir -p ~/.config/fastfetch

# Link the main zshrc from the subfolder to the home directory
ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc

# Link the modular files into the ~/.zsh/ folder
ln -sf ~/.dotfiles/zsh/aliases.zsh ~/.zsh/aliases.zsh
ln -sf ~/.dotfiles/zsh/paths.zsh ~/.zsh/paths.zsh
ln -sf ~/.dotfiles/zsh/init.zsh ~/.zsh/init.zsh

# Link the Fastfetch and Starship configs
ln -sf ~/.dotfiles/starship.toml ~/.config/starship.toml

echo "✅ All dotfiles linked successfully!"
echo "🚀 IMPORTANT: To apply changes, run: reload"