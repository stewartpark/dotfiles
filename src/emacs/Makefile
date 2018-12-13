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

check_wm:
	which dzen2
	which dmenu
	which dunst
	which autokey
	which nm-applet
	which blumena-applet
	which xcompmgr
	which fcitx
	which brightnessctl

install_wm:
	ln -s `pwd`/xsessionrc ~/.xsessionrc
	cp `pwd`/xresources ~/.Xresources # This can be different from machine to machine

uninstall_wm:
	rm -rf ./emacsrc ~/.xsessionrc ~/.Xresources
