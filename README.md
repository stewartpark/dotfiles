Stewart's Dotfiles
==================

[![Build Status](https://travis-ci.org/stewartpark/dotfiles.svg?branch=master)](https://travis-ci.org/stewartpark/dotfiles)

An automated dotfiles installer. Still a work-in-progress, but now at least it works.

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

To do
=====

- [ ] Install basic setups
    - [x] Bash
    - [x] GnuPG
    - [x] Git
    - [x] Python/pyenv
    - [x] Ruby/rbenv
    - [x] NeoVim
    - [x] Emacs
    - [ ] Atom
- [x] Have a basic test that at least tries to install all the things
- [ ] Have thorough acceptance tests to maintain the configuration valid on various environments
