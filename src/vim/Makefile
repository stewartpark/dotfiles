check:
	which nvim || which vim
	which cmake
	which gcc
	which python
	which pip

install: uninstall
	sudo pip install neovim  # Python support of Neovim
	git clone https://github.com/stewartpark/vimrc ./vimrc; cd ./vimrc; make install

uninstall:
	git clone https://github.com/stewartpark/vimrc ./vimrc; cd ./vimrc; make uninstall
