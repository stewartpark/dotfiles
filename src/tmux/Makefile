check:
	which tmux

install: uninstall
	ln -sf $(shell pwd)/tmux.conf $(HOME)/.tmux.conf
	ln -sf $(shell pwd)/tmux-osx.conf $(HOME)/.tmux-osx.conf

uninstall:
	rm -f $(HOME)/.tmux.conf
	rm -f $(HOME)/.tmux-osx.conf
