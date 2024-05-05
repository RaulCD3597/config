# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion case insensitive
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# nvim
alias vim="nvim"

# flutter
export PATH="$PATH:$HOME/development/flutter/bin"

# dotnet tools
export PATH="$PATH:/Users/raul/.dotnet/tools"

# python config
alias python='python3'
alias pip='pip3'

# oh-my-zsh plugins
ZSH=~/.oh-my-zsh
ZSH_CUSTOM=$ZSH/custom

# source $ZSH/lib/git.zsh
source $ZSH/plugins/git/git.plugin.zsh
