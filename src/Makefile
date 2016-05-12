SUBMODULES = bash git emacs vim

dep:
	sudo pip install virtualenv

install: dep
	for dir in $(SUBMODULES); do \
		$(MAKE) -C $$dir install; \
	done

uninstall:
	for dir in $(SUBMODULES); do \
		$(MAKE) -c $$dir uninstall; \
	done
