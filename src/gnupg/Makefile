check:
	which gpg
	which gpg-agent

install:
	mkdir -p ~/.gnupg
	ln -sf `pwd`/gpg.conf ~/.gnupg/gpg.conf
	if [ "$(shell uname)" == "Darwin" ]; then brew install pinentry-mac; fi

uninstall:
	rm -rf $(HOME)/.gnupg
