check:
	which keychain
	which emacs
	which pip

install:
	sudo pip install flake8 autopep8 isort
	make -p ~/.ssh && touch ~/.ssh/config
	git clone https://github.com/stewartpark/emacsrc ./emacsrc &&\
		cd ./emacsrc && make install

uninstall:
	cd ./emacsrc && make uninstall
	rm -rf ./emacsrc
