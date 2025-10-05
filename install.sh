#!/usr/bin/env bash
set -e # exit on error

DOTFILES="$HOME/.dotfiles"

link() {
    src="$1"
    dest="$2"

    # backup existing file if it exists and isn't already the correct symlink
    if [ -e "$dest" ] && [ ! -L "$dest" ]; then
        echo "Backing up $dest → ${dest}.bak"
        mv "$dest" "${dest}.bak"
    fi

    # remove old symlink if it exists
    if [ -L "$dest" ]; then
        rm "$dest"
    fi

    echo "Linking $dest → $src"
    ln -s "$src" "$dest"
}

# create config directory if missing
mkdir -p "$HOME/.config"

link "$DOTFILES/nvim" "$HOME/.config/nvim"
link "$DOTFILES/timewarrior" "$HOME/.config/timewarrior"
link "$DOTFILES/starship/starship.toml" "$HOME/.config/starship.toml"
link "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"
link "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"
link "$DOTFILES/.gitconfig" "$HOME/.gitconfig"

echo "Completed linking dotfiles."
