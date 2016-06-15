check:
	which gpg
	which gpg-agent

install: uninstall
	mkdir -p ~/.gnupg
	ln -sf `pwd`/gpg.conf ~/.gnupg/gpg.conf

uninstall:
