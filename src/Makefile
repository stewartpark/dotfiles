SUBMODULES = ttf-fonts \
  zsh tmux gnupg \
  vscode \
  python ruby nodejs rust golang scala \
  git rg

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
