#!/usr/bin/env bash

source $HOME/.cargo/env

rustup component add rust-src
cargo install racer
