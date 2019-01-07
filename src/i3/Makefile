check:
	which i3
	which emacs
	which fcitx

install:
	mkdir -p ~/.config/i3
	ln -sf `pwd`/xsessionrc ~/.xsessionrc
	ln -sf `pwd`/i3config ~/.config/i3/config
	cp `pwd`/xresources ~/.Xresources # This can be different from machine to machine

uninstall:
	rm -rf ~/.xsessionrc ~/.config/i3 ~/.Xresources
