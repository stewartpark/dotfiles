check:
	which python
	which pip

install: uninstall
	sudo pip install powerline-status
	if [ "$(uname)" == "Darwin" ]; then brew install powerline; fi
	mkdir -p $(HOME)/.config
	ln -sf $(shell pwd)/config $(HOME)/.config/powerline


uninstall:
	rm -f $(HOME)/.config/powerline
