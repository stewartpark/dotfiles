check:
	which nvim || which vim
	which cmake
	which gcc
	which python

install: uninstall
	sudo pip install neovim  # Python support of Neovim
	git clone https://github.com/stewartpark/vimrc ./vim && cd ./vim && make install

uninstall:
	git clone https://github.com/stewartpark/vimrc ./vim && cd ./vim && make uninstall
