if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ensure oh-my-posh and zoxide are findable
set -Ux fish_user_paths $HOME/bin
set -Ux fish_user_paths $HOME/.local/bin $fish_user_paths

# add deno
set -x DENO_INSTALL $HOME/.deno
set -x PATH $PATH $DENO_INSTALL/bin

# add nvim to path
set -x PATH $PATH /opt/nvim/bin

# set default editor to nvim
set -x EDITOR nvim

# oh-my-posh
oh-my-posh init fish --config ~/.config/fish/themes/redmac.opp.json | source

# zoxide
zoxide init fish | source

# set language english
set -x LANG en_US.UTF-8

# alias
alias vim='nvim'
alias cls='clear'
alias ll='ls -la'
alias lzd='lazydocker'
alias lg='lazygit'
alias gs='git status -s'

# github aliases
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcd='git checkout dev'
alias gu='git fetch --prune && git pull'

# shutdown wsl from inside
alias shutdown='wsl.exe --shutdown'

# Created by `pipx` on 2024-08-11 19:00:09
set -x PATH $PATH $HOME/.local/bin

# rust
source "$HOME/.cargo/env.fish"
set -x PATH $PATH $HOME/.cargo/bin

# nvm
load_nvm > /dev/stderr

# go bin
set -x PATH $PATH /usr/local/go/bin

# for pyenv
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PATH $PYENV_ROOT/bin
pyenv init - fish | source

# for java
set -x JAVA_HOME /usr/lib/jvm/java-17-openjdk-arm64

# bun
set -x BUN_INSTALL "$HOME/.bun"
set -x PATH $BUN_INSTALL/bin $PATH

# go bin path
set -x PATH $PATH $HOME/go/bin
