check:
	which bash
	which git
	which gpg
	which gpg-agent
	which vi
	which keychain

install: uninstall
	if [ "$(uname)" == "Darwin" ]; then brew install coreutils; fi
	ln -sf $(shell pwd)/inc $(HOME)/.bash.inc
	ln -sf $(shell pwd)/profile $(HOME)/.profile

uninstall:
	rm -f $(HOME)/.bash.inc
	rm -f $(HOME)/.profile
