check:
	which gpg
	which gpg-agent

install:
	mkdir -p ~/.gnupg
	ln -sf `pwd`/gpg.conf ~/.gnupg/gpg.conf
	if [ "$(shell uname)" == "Darwin" ]; then \
		brew install pinentry-mac; \
		ln -sf `pwd`/gpg-agent.mac.conf ~/.gnupg/gpg-agent.conf; \
	else \
		ln -sf `pwd`/gpg-agent.conf ~/.gnupg/gpg-agent.conf; \
	fi

uninstall:
	rm -rf $(HOME)/.gnupg
