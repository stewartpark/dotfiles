Stewart's Dotfiles
==================

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

To do
=====

- [ ] Install basic setups
    - [x] Bash
    - [x] GnuPG
    - [x] Git
    - [x] Python/virtualenv
    - [x] Vim
    - [ ] Emacs
    - [ ] Atom
- [x] Have a basic test that at least tries to install all the things
- [ ] Have thorough acceptance tests to maintain the configuration valid on various environments
