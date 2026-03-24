# 🚀 xo_supernova // Dotfiles

![Shell](https://img.shields.io/badge/shell-zsh-brightgreen.svg)
![OS](https://img.shields.io/badge/os-CachyOS-blue.svg)
![Prompt](https://img.shields.io/badge/prompt-starship-orange.svg)

Modular Zsh configuration optimized for **CachyOS**. Designed for speed, organized for sanity.

---

## 📂 Architecture

* **[`.github/`](./.github/)**: GitHub actions, workflows, and [extended documentation](./.github/docs/).
* **[`zsh/`](./zsh/)**: Core logic including [`zshrc`](./zsh/zshrc), [`aliases.zsh`](./zsh/aliases.zsh), and [`paths.zsh`](./zsh/paths.zsh).
* **[`fastfetch/`](./fastfetch/)**: Visual configurations for [Kitty](./fastfetch/kitty.jsonc) and [Konsole](./fastfetch/konsole.jsonc).
* **[`ZSH.md`](./.github/docs/ZSH.md)**: 💡 **Full Alias & Workflow Cheatsheet.**

---

## 🛠️ Installation

```zsh
git clone git@github.com:YOUR_USERNAME/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
chmod +x install.sh
./install.sh
reload
```

## ⌨️ Quick-Link Aliases

| Command | Action |
| ----------- | ----------- |
| `update` | Full system upgrade (Pacman -Syu) |
| `dots` | Direct access to this git repo |
| `zconf` | Quickly edit the main Zsh config |
| `copypub` | Copies SSH Public Key to clipboard |
| `copypub` | FInstantly apply changes to the shell |

**Note:** Requires [Nerd Fonts](https://www.nerdfonts.com/) for Starship icons to render correctly.