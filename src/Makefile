SUBMODULES = ttf-fonts zsh gnupg git python emacs vim ruby nodejs rust pow tmux haskell crystal-lang ag bat

check:
	for dir in $(SUBMODULES); do \
		$(MAKE) -C $$dir check || exit 1; \
	done

install: check
	for dir in $(SUBMODULES); do \
		$(MAKE) -C $$dir install; \
	done

uninstall:
	for dir in $(SUBMODULES); do \
		$(MAKE) -c $$dir uninstall; \
	done
