SUBMODULES = bash git emacs vim

install:
	for dir in $(SUBMODULES); do \
		$(MAKE) -C $$dir install; \
	done

uninstall:
	for dir in $(SUBMODULES); do \
		$(MAKE) -c $$dir uninstall; \
	done
