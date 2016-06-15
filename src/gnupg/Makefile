check:
	which gpg
	which gpg-agent

install:
	mkdir -p ~/.gnupg
	ln -sf `pwd`/gpg.conf ~/.gnupg/gpg.conf

uninstall:
	rm -rf $(HOME)/.gnupg
