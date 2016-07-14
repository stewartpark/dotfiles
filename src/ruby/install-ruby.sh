#!/usr/bin/env bash

export PATH=$PATH:$HOME/.rbenv/bin
eval $(rbenv init -)

rbenv help

rbenv install 2.3.1
rbenv global 2.3.1

# To use 2.3 in the current session
rbenv shell 2.3.1

# Install bundler
gem install bundler
