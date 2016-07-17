check:
	which git

install: uninstall
	ln -sf $(shell pwd)/gitconfig $(HOME)/.gitconfig
	ln -sf $(shell pwd)/global-gitignore $(HOME)/.gitignore_global

uninstall:
	rm -f $(HOME)/.gitconfig
	rm -f $(HOME)/.gitignore_global
