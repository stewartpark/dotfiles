check:
	which tmux
	which reattach-to-user-namespace

install: uninstall
	ln -sf $(shell pwd)/tmux.conf $(HOME)/.tmux.conf
	ln -sf $(shell pwd)/tmux-osx.conf $(HOME)/.tmux-osx.conf
	if [ "$(shell uname)" == "Darwin" ]; then brew install reattach-to-user-namespace; fi

uninstall:
	rm -f $(HOME)/.tmux.conf
	rm -f $(HOME)/.tmux-osx.conf
