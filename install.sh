#!/usr/bin/env bash

set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HOME_DIR="$HOME"
CONFIG_DIR="$HOME_DIR/.config"

# Colours
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

info()    { echo -e "${BLUE}[INFO]${NC} $1"; }
success() { echo -e "${GREEN}[OK]${NC} $1"; }
error()   { echo -e "${RED}[ERROR]${NC} $1"; }

echo ""
echo -e "${BLUE}================================================${NC}"
echo -e "${BLUE}        .dotfiles — Installation Script          ${NC}"
echo -e "${BLUE}================================================${NC}"
echo ""

# ============================================================
# Pre-flight checks
# ============================================================

if ! xcode-select -p &>/dev/null; then
    error "Xcode Command Line Tools not found."
    echo "  Install them with: xcode-select --install"
    exit 1
fi
success "Xcode Command Line Tools found"

if ! command -v brew &>/dev/null; then
    error "Homebrew not found."
    echo "  Install it from: https://brew.sh"
    exit 1
fi
success "Homebrew found"

# ============================================================
# Install Brewfile dependencies
# ============================================================

info "Installing Homebrew bundle from Brewfile..."
brew bundle --file="$DOTFILES_DIR/Brewfile" --no-lock
success "Brewfile dependencies installed"

# ============================================================
# Copy dotfiles to home directory
# ============================================================

info "Copying home directory dotfiles..."

cp "$DOTFILES_DIR/.zshrc" "$HOME_DIR/.zshrc"
success "Copied .zshrc"

cp "$DOTFILES_DIR/.editorconfig" "$HOME_DIR/.editorconfig"
success "Copied .editorconfig"

# ============================================================
# Copy .config directories & files
# ============================================================

info "Copying .config entries..."

mkdir -p "$CONFIG_DIR"

cp -r "$DOTFILES_DIR/.config/ghostty" "$CONFIG_DIR/ghostty"
success "Copied ghostty config"

cp -r "$DOTFILES_DIR/.config/nvim" "$CONFIG_DIR/nvim"
success "Copied nvim config"

cp -r "$DOTFILES_DIR/.config/zsh" "$CONFIG_DIR/zsh"
success "Copied zsh config"

cp "$DOTFILES_DIR/.config/starship.toml" "$CONFIG_DIR/starship.toml"
success "Copied starship.toml"

# ============================================================
# macOS defaults
# ============================================================

info "Applying macOS defaults..."

defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.mitchellh.ghostty ApplePressAndHoldEnabled -bool false
defaults write md.obsidian ApplePressAndHoldEnabled -bool false
defaults write com.todesktop.230313mzl4w4u92 ApplePressAndHoldEnabled -bool false

defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

success "macOS defaults applied"

# ============================================================
# Done
# ============================================================

echo ""
echo -e "${GREEN}================================================${NC}"
echo -e "${GREEN}        Installation complete! 🎉               ${NC}"
echo -e "${GREEN}================================================${NC}"
echo ""
info "Open a new terminal session or run: source ~/.zshrc"
echo ""
