check:
	which nvim || which vim
	which cmake
	which gcc

install:
	git clone https://github.com/stewartpark/vimrc ./vim && cd ./vim && make install

uninstall:
	cd ./vim && make uninstall
	rm -rf ./vim
