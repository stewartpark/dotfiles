#!/usr/bin/env bash

export PATH=$PATH:$HOME/.rbenv/bin
eval $(rbenv init -)

rbenv install 2.5.1
rbenv global 2.5.1

# To use 2.3 in the current session
rbenv shell 2.5.1

# Install bundler and pry
rbenv exec gem install bundler
rbenv exec gem install pry
rbenv rehash

# Install .pryrc
ln -sf `pwd`/pryrc $HOME/.pryrc
