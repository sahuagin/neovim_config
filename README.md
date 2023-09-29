# Nvim Lua Setup

## Linux

Basically just works.

## FreeBSD

Needed to do a few extra steps.

1. install nvm

   ```bash
   # NOTE: clang16 failed do to errors in build
   export CC=clang14
   export CXX=clang++14

   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
   ```

1. add to path. put into .zsh/zenvironment
   ```zsh
    export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
   [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
    `
   ```
1. load the new path
   ```bash
   source ~/.zshrc
   ```
1. install jedi_language_server and other python tools
   ```bash
   pip install pyright mypy black jedi_language_server
   which jedi_language_server
   /home/sahuagin/.local/bin/jedi-language-server
   ```
1. Add cargo/bin to .profile so editor can find rust-analyzer
   ```bash
    echo '. "$HOME/.cargo/env"
   export PATH=$HOME/.cargo/bin:$PATH"
   ' >> ~/.profile
    `
   ```
1. build telescope-fzf-native manually
   ```bash
   cd ~/.local/share/nvim/lazy/
   git clone https://github.com/nvim-telescope/telescope-fzf-native.nvim.git
   cd telescope-fzf-native.nvim
   cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build
   ```
