check:
	which keychain
	which emacs
	which easy_install

install:
	sudo easy_install flake8 autopep8 isort
	make -p ~/.ssh && touch ~/.ssh/config
	git clone https://github.com/stewartpark/emacsrc ./emacsrc &&\
		cd ./emacsrc && make install

uninstall:
	cd ./emacsrc && make uninstall
