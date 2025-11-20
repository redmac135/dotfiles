# -----------------------------
# PATH additions
# -----------------------------

# oh-my-posh and zoxide paths
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# neovim
export PATH="/opt/nvim/bin:$PATH"

# rust
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"
export PATH="$HOME/.cargo/bin:$PATH"

# go
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# java
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-arm64"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bob - nvim
export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"

# snap
export PATH="/snap/bin:$PATH"

# -----------------------------
# Aliases
# -----------------------------
alias vim='nvim'
alias cls='clear'
alias ll='ls -la --color=auto'
alias lzd='lazydocker'
alias lg='lazygit'
alias gs='git status -s'
alias fd='fdfind'

# git shortcuts
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcd='git checkout dev'
alias gu='git fetch --prune && git pull'

# shutdown WSL
alias shutdown='wsl.exe --shutdown'

# -----------------------------
# Init statements
# -----------------------------

# Enable command auto-correction
autoload -Uz compinit && compinit
zmodload zsh/complist
_comp_options+=(globdots) # include hidden files in completion

# Default editor
export EDITOR="nvim"
export MANPAGER="nvim +Man!"

# zoxide
eval "$(zoxide init zsh)"

# bob - completions
source <(bob complete zsh)

# mise
eval "$(mise activate zsh)"

# -----------------------------
# ZSH Configuration
# -----------------------------

# zsh-autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# fzf completion
[[ $- == *i* ]] && source /usr/share/doc/fzf/examples/completion.zsh
# fzf key bindings
[[ $- == *i* ]] && source /usr/share/doc/fzf/examples/key-bindings.zsh

# Enable menu selection for completions
zstyle ':completion:*' menu select

# extend history size
export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=~/.zsh_history

# ignore redundant entries in history
export HISTIGNORE='exit:cd:ls:bg:fg:history:f:fd:vim'

# Edit command line widgets
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^Xe' edit-command-line  # Ctrl+X, then E to edit command

# zsh-syntax-highlighting (must be last)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# starship
eval "$(starship init zsh)"
