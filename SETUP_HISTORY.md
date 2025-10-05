# misc packages with apt
```bash
sudo apt install fish fzf gh git unzip
apt install python3.11-venv
```

# golang
```bash
wget https://golang.org/dl/go1.24.1.linux-arm64.tar.gz
sudo tar -C /usr/local -xzf go1.24.1.linux-arm64.tar.gz
rm go1.24.1.linux-arm64.tar.gz
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

# oh-my-posh
```bash
curl -s https://ohmyposh.dev/install.sh | bash -s
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
sudo apt install lua5.4-dev
wget https://luarocks.org/releases/luarocks-3.11.1.tar.gz
tar zxpf luarocks-3.11.1.tar.gz
cd luarocks-3.11.1
./configure && make && sudo make install
```

# docker setup commands
```bash
sudo apt-get update
sudo apt-get -y install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

## For some reason, docker key didn't save
```bash
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

# java
```bash
sudo apt install default-jre
sudo apt install default-jdk
```

# Arduino CLI
```bash
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | BINDIR=~/.local/bin sh
```

# To make fzf work
```bash
sudo apt install ripgrep
```

# Bun
```bash
curl -fsSL https://bun.sh/install | bash
```

# lf
```bash
env CGO_ENABLED=0 go install -ldflags="-s -w" github.com/gokcehan/lf@latest
```

# Latex Setup
```bash
sudo apt install texlive-latex-base texlive-latex-recommended texlive-latex-extra latexmk
sudo ln -s "/mnt/c/Program Files/SumatraPDF/SumatraPDF.exe" /usr/local/bin/sumatra
```

# Cloudflared
```bash
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64.deb -O cloudflared.deb
sudo dpkg -i cloudflared.deb
```

# Deno
```bash
curl -fsSL https://deno.land/install.sh | sh
```
