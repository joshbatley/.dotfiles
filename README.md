# .dotfiles

Personal macOS development environment configuration files.

## What's included

| Config | Path | Description |
|---|---|---|
| **Zsh** | `~/.zshrc` | Shell configuration |
| **Zsh plugins** | `~/.config/zsh/` | Custom zsh plugins (git aliases etc.) |
| **Neovim** | `~/.config/nvim/` | LazyVim-based Neovim setup |
| **Ghostty** | `~/.config/ghostty/` | Ghostty terminal configuration |
| **Starship** | `~/.config/starship.toml` | Starship prompt theme |
| **EditorConfig** | `~/.editorconfig` | Editor formatting defaults |
| **Brewfile** | `./Brewfile` | Homebrew dependencies |

## Prerequisites

The following **must** be installed before running the install script:

### 1. Xcode Command Line Tools

```bash
xcode-select --install
```

### 2. Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

After installation, follow the instructions in your terminal to add Homebrew to your ⁠PATH.

3. Docker Desktop
Docker Desktop must be installed manually from the [official Docker website](https://www.docker.com/products/docker-desktop/). Please do not use the Homebrew cask version, as it is known to have compatibility issues.

Here's the raw content - you can copy everything below the line:

---

## Installation

1. **Install Xcode Command Line Tools:**

   ```bash
   xcode-select --install
   ```

2. **Install Homebrew:**

   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

   After installation, follow the instructions in your terminal to add Homebrew to your `PATH`.

3. **Clone the repo:**

   ```bash
   git clone https://github.com/joshbatley/.dotfiles.git ~/.dotfiles
   ```

4. **Run the install script:**

   ```bash
   cd ~/.dotfiles
   chmod +x install.sh
   ./install.sh
   ```

## What the script does

- ✅ Verifies that Xcode CLI tools and Homebrew are installed
- 📦 Installs all dependencies from the `Brewfile` via `brew bundle`
- 📁 Copies all config files to their correct locations
- ⚙️ Applies macOS defaults (fast key repeat, disable press-and-hold for VS Code, Ghostty, Obsidian & Cursor)

## What's included

| Config | Path | Description |
|---|---|---|
| **Zsh** | `~/.zshrc` | Shell configuration |
| **Zsh plugins** | `~/.config/zsh/` | Custom zsh plugins (git aliases etc.) |
| **Neovim** | `~/.config/nvim/` | LazyVim-based Neovim setup |
| **Ghostty** | `~/.config/ghostty/` | Ghostty terminal configuration |
| **Starship** | `~/.config/starship.toml` | Starship prompt theme |
| **EditorConfig** | `~/.editorconfig` | Editor formatting defaults |
| **Brewfile** | `./Brewfile` | Homebrew dependencies |

## File structure

```
.dotfiles/
├── .config/
│   ├── ghostty/
│   │   └── config
│   ├── nvim/
│   │   ├── lua/
│   │   │   ├── config/
│   │   │   └── plugins/
│   │   ├── init.lua
│   │   ├── lazy-lock.json
│   │   ├── lazyvim.json
│   │   └── stylua.toml
│   ├── zsh/
│   │   └── git.plugin.zsh
│   └── starship.toml
├── .editorconfig
├── .zshrc
├── Brewfile
├── install.sh
└── README.md
```
