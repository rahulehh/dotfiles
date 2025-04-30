# Export paths
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$PATH:/Users/rahul/Tools/flutter/bin:/opt/homebrew/opt/postgresql@16/bin:/Users/rahul/Library/Python/3.9/bin:/usr/bin/java:/Users/rahul/.bun/bin:/Users/rahul/go/bin:/Users/rahul/.lmstudio/bin"

# Set Locales
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export TERM=xterm-256color
# export TERM=screen-256color

# Set default editor as nvim
alias vim='nvim'
export VISUAL=nvim
export EDITOR="$VISUAL"

# Inits
source <(fzf --zsh)
eval "$(starship init zsh)"
eval "$(rbenv init - zsh)"

# Plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source $(dirname $(gem which colorls))/tab_complete.sh

# Aliases
alias ls='eza --icons'

alias tree='eza -T --icons'

alias start-postgres='LC_ALL="C" /opt/homebrew/opt/postgresql@16/bin/postgres -D /opt/homebrew/var/postgresql@16'
alias brewup='brew update && brew upgrade'
alias upev='brew update && brew upgrade && gem update'
alias g++11='g++ --std=c++11'
alias g++20='g++ --std=c++20'

alias tmuxn='tmux new -s'
alias tmuxa='tmux attach -t'
alias tmuxks='tmux kill-session -t'
alias tmuxksa='tmux kill-server'

# Completion styles and functionlities
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Keybindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# load pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# Generate Random Pokemon
pokeget random

# bun completions
[ -s "/Users/rahul/.bun/_bun" ] && source "/Users/rahul/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"

# Added by Windsurf
export PATH="/Users/rahul/.codeium/windsurf/bin:$PATH"
