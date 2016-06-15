#!/usr/bin/env bash

export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv install 3.5.1
pyenv local 3.5.1
