# Powerlines
eval "$(starship init zsh)"

# Macos - key repeat for vim scrolling
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 2

# Force NVim over vim
alias vim=nvim

defaults write com.todesktop.230313mzl4w4u92 ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.mitchellh.ghostty ApplePressAndHoldEnabled -bool false
defaults write md.obsidian ApplePressAndHoldEnabled -bool false

# export ZLE_RPROMPT_INDENT=0
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.config/zsh/git.plugin.zsh
