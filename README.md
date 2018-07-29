Stewart's Dotfiles
==================

[![Build Status](https://travis-ci.org/stewartpark/dotfiles.svg?branch=master)](https://travis-ci.org/stewartpark/dotfiles)

An automated dotfiles installer.

How to use
==========

To test if you have all the binaries you need for this set up, please run the following:

```bash
$ make check
```

To install the dotfiles, run the following:

```bash
$ make install
```

If you made any changes and want to see if it still works, try to run tests:

```bash
$ make test
```

You also have to import Stewart Park's GPG public/private keys. This part makes everyone else not able to use this dotfiles, you can fork the project and modify it. You can import keys by the following:

```bash
$ make import_gpg
```

This repostiory includes configurations for
===========================================

- Zsh
- GnuPG
- Git
- Python/pyenv
- Ruby/rbenv
- Rust
- Nodejs
- Crystal-lang
- Haskell
- Silversearcher-ag
- NeoVim
- Emacs
- Pow for Mac
- tmux
