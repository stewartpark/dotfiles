check:
	which keychain
	which emacs
	which pip

install:
	if hash apt-get 2>/dev/null; then \
		sudo apt-get install -y cbatticon suckless-tools dunst; \
	fi
	sudo pip install flake8 autopep8 isort
	make -p ~/.ssh && touch ~/.ssh/config
	git clone https://github.com/stewartpark/emacsrc ./emacsrc &&\
		cd ./emacsrc && make install
	ln -s `pwd`/xsessionrc ~/.xsessionrc
	cp `pwd`/xresources ~/.Xresources # This can be different from machine to machine

uninstall:
	cd ./emacsrc && make uninstall
	rm -rf ./emacsrc ~/.xsessionrc ~/.Xresources
