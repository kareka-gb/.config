# Aliases
alias ls='eza --icons'
alias la='eza -la --icons'
alias run='~/Documents/CP/.bash/.run.sh'
alias runs='~/Documents/CP/.bash/.runs.sh'
alias vim='nvim'

# Custom Prompt
eval "$(starship init zsh)"

# Shell Integration
source <(fzf --zsh)

# zsh plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh


