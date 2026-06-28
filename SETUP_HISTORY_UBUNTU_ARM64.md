# misc packages with apt
```bash
sudo apt install fzf gh git unzip
```

# mise
```bash
curl https://mise.run | sh
```

# golang
```bash
mise install go@latest
mise use -g go@latest
```

# gopls
```bash
go install golang.org/x/tools/gopls@latest
```

# lazygit
```bash
go install github.com/jesseduffield/lazygit@latest
```

# lazydocker
```bash
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
```

# zoxide
```bash
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
```

# neovim
```bash
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=Release
sudo make install
cd ..
rm -rf neovim
```

# nvm
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
```

# rust
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

# tree-sitter cli
```bash
npm install -g tree-sitter-cli
```

# lua
```bash
sudo apt install lua5.4
```

# luarocks
```bash
sudo apt install liblua5.4-dev
wget https://luarocks.org/releases/luarocks-3.11.1.tar.gz
tar zxpf luarocks-3.11.1.tar.gz
cd luarocks-3.11.1
./configure && make && sudo make install
```

# docker setup commands
```bash
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

# java
```bash
sudo apt install default-jre
sudo apt install default-jdk
```

# Bun
```bash
curl -fsSL https://bun.sh/install | bash
```

# Cloudflared
```bash
# Add cloudflare gpg key
sudo mkdir -p --mode=0755 /usr/share/keyrings
curl -fsSL https://pkg.cloudflare.com/cloudflare-main.gpg | sudo tee /usr/share/keyrings/cloudflare-main.gpg >/dev/null

# Add this repo to your apt repositories
echo 'deb [signed-by=/usr/share/keyrings/cloudflare-main.gpg] https://pkg.cloudflare.com/cloudflared noble main' | sudo tee /etc/apt/sources.list.d/cloudflared.list

# install cloudflared
sudo apt-get update && sudo apt-get install cloudflared
```

# Deno
```bash
curl -fsSL https://deno.land/install.sh | sh
```

# Bob
```bash
cargo install bob-nvim
```

# Pyenv
```bash
curl -fsSL https://pyenv.run | bash
```

# Fix Ubuntu Locales
```bash
sudo apt update
sudo apt install locales -y
sudo locale-gen en_US.UTF-8
sudo update-locale LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
```

# Clangd
```bash
sudo apt install clangd
```

# Rust Analyzer
```bash
rustup component add rust-analyzer
ln -s $(rustup which rust-analyzer) ~/.local/bin/rust-analyzer
```

# Pyenv Global Setup
```bash
pyenv install 3.12.6
pyenv global 3.12.6
```

# CMake Language Server
```bash
pip install --user cmake-language-server
```

# Install ripgrep
```bash
sudo apt install ripgrep
```

# zsh
```bash
sudo apt install zsh
```

# Starship
```bash
curl -sS https://starship.rs/install.sh | sh
```

# NVM
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
```

# xclip to allow unnamedplus as clipboard in neovim
```bash
sudo apt install xclip
```

# bash-language-server
```bash
sudo snap install bash-language-server --classic
```

# fd-find
```bash
sudo apt install fd-find
```
