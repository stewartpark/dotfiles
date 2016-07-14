check:
	which nvim || which vim
	which cmake
	which gcc

install:
	git clone https://github.com/stewartpark/vimrc ./vimrc && cd ./vimrc && make install

uninstall:
	cd ./vimrc && make uninstall
	rm -rf ./vimrc
