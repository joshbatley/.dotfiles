# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/josh/.oh-my-zsh"
export NPM_TOKEN=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

ZSH_THEME="robbyrussell"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source $HOME/.cargo/env

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
fi

# Macos - key repeat for vim scrolling
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 2
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias nuke-node="rm -rf yarn.lock && rm -rf node_modules && yarn"
