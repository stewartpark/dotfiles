check:
	which zsh
	which git
	which gpg
	which gpg-agent
	which vi
	which keychain

install: uninstall
	if [ "$(uname)" == "Darwin" ]; then brew install coreutils zsh; fi
	ln -sf $(shell pwd)/inc $(HOME)/.zsh.inc
	ln -sf $(shell pwd)/functions $(HOME)/.zsh.functions
	ln -sf $(shell pwd)/zprofile $(HOME)/.zprofile

uninstall:
	rm -f $(HOME)/.zsh.inc
	rm -f $(HOME)/.zshrc
