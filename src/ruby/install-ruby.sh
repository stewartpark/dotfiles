#!/usr/bin/env bash

RUBY_VERSION=2.7.5

export PATH=$PATH:$HOME/.rbenv/bin
eval "$(rbenv init -)"

rbenv install "$RUBY_VERSION"
rbenv global "$RUBY_VERSION"

# To use the installed version in the current session
rbenv shell "$RUBY_VERSION"

# Install bundler and pry
rbenv exec gem install bundler
rbenv exec gem install pry
rbenv rehash

# Install .pryrc
ln -sf `pwd`/pryrc $HOME/.pryrc
