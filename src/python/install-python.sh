#!/usr/bin/env bash

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv install 3.5.1
pyenv global 3.5.1

# To use the new python in the current session
pyenv shell 3.5.1

# Install pip
easy_install pip

# Neovim Python support
pip install neovim
