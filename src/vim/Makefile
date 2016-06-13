check:
	which nvim || which vim
	which cmake
	which gcc
	which python

install: uninstall
	git clone https://github.com/stewartpark/vimrc ./vimrc; cd ./vimrc; make install

uninstall:
	git clone https://github.com/stewartpark/vimrc ./vimrc; cd ./vimrc; make uninstall
