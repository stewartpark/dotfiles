check:
	which emacs

install:
	git clone https://github.com/stewartpark/emacsrc ./emacsrc &&\
		cd ./emacsrc && mkdir -P ~/.emacs.d && ln -s init.el ~/.emacs.d/init.el

uninstall:
	rm -rf ~/.emacs.d ./emacsrc
