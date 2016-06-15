#!/usr/bin/env bash

export PATH=$PATH:$HOME/.rvm/bin
. $HOME/.rvm/scripts/rvm
rvm install ruby-2.3
rvm use ruby-2.3

# Install bundler
gem install bundler
