#!/usr/bin/env bash

# System-wide Python set up
sudo easy_install pip
sudo pip install neovim  # Neovim Python support

# Local setup with pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv install 3.5.1
pyenv global 3.5.1

# To use the new python in the current session
pyenv shell 3.5.1
