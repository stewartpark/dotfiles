check:
	which keychain
	which emacs

install:
	make -p ~/.ssh && touch ~/.ssh/config
	git clone https://github.com/stewartpark/emacsrc ./emacsrc &&\
		cd ./emacsrc && make install

uninstall:
	cd ./emacsrc && make uninstall
