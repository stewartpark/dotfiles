check:
	$(MAKE) -C src check

install:
	$(MAKE) -C src install

uninstall:
	$(MAKE) -C src uninstall

import_gpg:
	@echo "Path that has public.key/private.key:"
	@read GPG_PATH; \
	gpg --import $$GPG_PATH/public.key; \
	gpg --allow-secret-key-import --import $$GPG_PATH/private.key
	@echo "Imported."

test:
	docker build -t test_dotfiles .
	docker run --rm test_dotfiles
