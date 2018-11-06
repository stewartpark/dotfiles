check:
	which gpg
	which gpg-agent

install:
	mkdir -p ~/.gnupg
	ln -sf `pwd`/gpg.conf ~/.gnupg/gpg.conf
	ln -sf `pwd`/gpg-agent.conf ~/.gnupg/gpg-agent.conf

uninstall:
	rm -rf $(HOME)/.gnupg
