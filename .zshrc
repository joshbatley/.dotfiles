# oh my zsh setup 
export ZSH="/Users/josh.batley/.oh-my-zsh/"
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
ZSH_THEME="robbyrussell"

# Powerlines
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
source ~/.p10k.zsh

# Macos - key repeat for vim scrolling
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 2

# Force NVim over vim
alias vim=nvim
