check:
	which emacs

install:
	git clone https://github.com/stewartpark/emacsrc ./emacsrc &&\
		cd ./emacsrc && mkdir -p ~/.emacs.d && ln -s `pwd`/init.el ~/.emacs.d/init.el

uninstall:
	rm -rf ~/.emacs.d ./emacsrc
