check:
	which stumpwm
	which emacs
	which fcitx

install:
	git clone git@github.com:stumpwm/stumpwm-contrib.git stumpwm-contrib
	ln -sf `pwd`/xsessionrc ~/.xsessionrc
	ln -sf `pwd`/stumpwmrc ~/.stumpwmrc
	ln -sf `pwd`/stumpwm-contrib ~/.stumpwm-contrib
	cp `pwd`/xresources ~/.Xresources # This can be different from machine to machine

uninstall:
	rm -rf ~/.xsessionrc ~/.stumpwmrc ~/.Xresources
