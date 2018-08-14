#!/usr/bin/env bash

# System-wide Python set up
sudo easy_install pip
sudo pip install neovim  # Neovim Python support
sudo pip install psutil netifaces  # For Powerline

# Local setup with pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv install 3.7.0
pyenv global 3.7.0

# To use the new python in the current session
pyenv shell 3.7.0
