#!/usr/bin/env bash

NODE_VERSION=stable

pushd .
cd ~/.nvm
git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
source ./nvm.sh
nvm install "$NODE_VERSION"
nvm alias default "$NODE_VERSION"
popd
