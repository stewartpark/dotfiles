SUBMODULES = bash gnupg git python emacs vim

check:
	for dir in $(SUBMODULES); do \
		$(MAKE) -C $$dir check; \
	done

install: check
	for dir in $(SUBMODULES); do \
		$(MAKE) -C $$dir install; \
	done

uninstall:
	for dir in $(SUBMODULES); do \
		$(MAKE) -c $$dir uninstall; \
	done
