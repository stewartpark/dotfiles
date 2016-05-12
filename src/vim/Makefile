OS = $(shell uname)
VIM = nvim

dir:
	mkdir -p ./vim/bundle

install: dir uninstall setup_fonts 
	ln -sf `pwd`/vim $(HOME)/.vim
	ln -sf `pwd`/vim $(HOME)/.nvim
	ln -sf `pwd`/vimrc $(HOME)/.vimrc
	ln -sf `pwd`/vimrc $(HOME)/.nvim/init.vim
	git clone https://github.com/gmarik/vundle ./vim/bundle/vundle
	$(VIM) +PluginInstall +qall
	cd vim/bundle/YouCompleteMe; ./install.sh
	echo "Installation completed."

uninstall:
	rm -f $(HOME)/.vim 
	rm -f $(HOME)/.nvim
	rm -f $(HOME)/.vimrc
	rm -f $(HOME)/.nvim/init.vim

setup_fonts:
	mkdir -p /tmp/fonts
	cp -R fonts/*.ttf /tmp/fonts/
	if [ X"$(OS)" = X"Darwin" ]; then \
	cd ~/Library/Fonts/; \
	elif [ X"$(OS)" = X"Linux" ]; then \
	mkdir -p ~/.fonts; cd ~/.fonts; \
	else \
	echo "Specify your font directory:"; read FONT_PATH; echo $(FONT_PATH);cd $(FONT_PATH); \
	fi; \
	cp /tmp/fonts/*.ttf .;
	rm -rf /tmp/fonts/
