check:
	which stumpwm
	which emacs
	which dunst
	which nm-applet
	which blumena-applet
	which xcompmgr
	which fcitx
	which brightnessctl

install:
	git clone git@github.com:stumpwm/stumpwm-contrib.git stumpwm-contrib
	ln -sf `pwd`/xsessionrc ~/.xsessionrc
	ln -sf `pwd`/stumpwmrc ~/.stumpwmrc
	ln -sf `pwd`/stumpwm-contrib ~/.stumpwm-contrib
	cp `pwd`/xresources ~/.Xresources # This can be different from machine to machine

uninstall:
	rm -rf ~/.xsessionrc ~/.stumpwmrc ~/.Xresources
