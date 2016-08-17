check:
	which python
	which pip

install: uninstall
	pip install powerline-status
	ln -sf $(shell pwd)/tmux.conf $(HOME)/.tmux.conf

uninstall:
	rm -f $(HOME)/.tmux.conf
