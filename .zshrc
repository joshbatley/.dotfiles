export ZSH="/Users/joshbatley/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
fi

# Macos - key repeat for vim scrolling
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 2

# Alias
alias dt="dotnet"
alias gitroot='cd "$(git rev-parse --show-cdup)"'
# alias code="code-insiders"
