# 🐚 Zsh Configuration Guide

This document breaks down the custom environment, aliases, and workflows integrated into this dotfile setup.

---

## 🚀 Core Workflows

### 🛠️ Maintenance & Updates
| Alias | Command | Description |
| :--- | :--- | :--- |
| `update` | `sudo pacman -Syu` | Full system & repo synchronization |
| `paclean` | `sudo pacman -Sc` | Cleans the package cache to save space |
| `reload` | `source ~/.zshrc` | Hot-reload the shell configuration |
| `zconf` | `nano ~/.zsh/zshrc` | Quick-edit the main config file |

### 📂 Navigation (Zoxide)
We use **Zoxide** instead of standard `cd`. It learns your habits.
- `cd <folder>`: Standard navigation.
- `z <fragment>`: Jump to any directory in your history (e.g., `z open` jumps to `~/.opencode/bin`).
- `zi`: Interactive jump using a fuzzy finder.

---

## 📦 Modern CLI Replacements
We've swapped boring legacy tools for faster, colorized alternatives:

- **`ls` / `ll` / `lsh`**: Powered by `eza`. Includes icons and git integration.
- **`cat`**: Powered by `bat`. Adds syntax highlighting and line numbers.
- **`top`**: Powered by `btop`. A beautiful system dashboard.
- **`help`**: Powered by `tldr`. Simplified, example-based man pages.

---

## 🔧 Developer Tools

### 🐙 Git Shortcuts
Speed up your version control without typing long strings:
- `gs`: `git status`
- `ga`: `git add .`
- `gc "msg"`: `git commit -m`
- `gp`: `git push`

### 🏗️ Dotfiles Management
Manage this specific repository from any directory:
- `dots <command>`: Run git commands inside `~/.dotfiles`.
- `dotpush`: Quickly push your config changes to GitHub.

### 🔑 Security & Identity
- `copypub`: Copies your `id_ed25519.pub` to the clipboard for easy GitHub linking.
- `myip`: Displays your local and public IP addresses.
- `ports`: Lists all active TCP listeners (find what's hogging a port).

---

## 🖥️ Terminal Specifics

### 🐱 Kitty
- `icat`: Display images directly in the terminal buffer.
- `kssh`: SSH into remote servers while keeping your Kitty themes/fonts intact.

### 🐚 Konsole
- `kprofile <name>`: Open a new Konsole window with a specific profile.
- `kedit`: Jump straight into the Konsole profile XML files for deep tweaking.

---

## 🏗️ Path Hierarchy
The `$PATH` is automatically de-duplicated and prioritized in this order:
1. `~/.opencode/bin` (Highest Priority)
2. `pnpm` binaries
3. `Mise` shims (Java/Python/Node)
4. `~/.local/bin`
5. System binaries