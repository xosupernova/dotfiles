# VSCodium
alias vsc="flatpak run com.vscodium.codium"
alias code="vsc"

# System Updates
alias update="sudo pacman -Syu"
alias paclean="sudo pacman -Sc"

# Modern CLI Replacements
alias cat="bat"
alias ls="eza --icons --group-directories-first"
alias lsh="eza --icons --group-directories-first -a"
alias ll="eza --icons --group-directories-first -lh"
alias top="btop"
alias help="tldr"

# Terminal-Specific
alias icat="kitty +kitten icat"
alias kssh="kitty +kitten ssh"
alias kprofile="konsole --profile"
alias kedit="nano ~/.local/share/konsole/*.profile"

# Git
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"

# Safety & Power Tools
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias fuckyou='sudo $(fc -ln -1)'
alias path='echo $PATH | tr ":" "\n"'
alias myip="hostname -I | awk '{print \$1}' && curl -s ifconfig.me && echo"
alias ports="sudo lsof -iTCP -sTCP:LISTEN -P -n"
alias usage="du -sh * | sort -h"
alias zconf="nano ~/.zshrc"
alias reload="source ~/.zshrc"