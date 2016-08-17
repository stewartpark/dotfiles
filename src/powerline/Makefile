check:
	which python
	which pip

install: uninstall
	pip install powerline-status
	mkdir -p $(HOME)/.config
	ln -sf $(shell pwd)/config $(HOME)/.config/powerline


uninstall:
	rm -f $(HOME)/.config/powerline
