#!/usr/bin/env bash

PYTHON_VERSION=3.8.5

# Local setup with pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv install "$PYTHON_VERSION"
pyenv global "$PYTHON_VERSION"

# To use the new python in the current session
pyenv shell "$PYTHON_VERSION"
