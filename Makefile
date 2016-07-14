check:
	$(MAKE) -C src check
	@echo "Success"

install:
	$(MAKE) -C src install
	@echo "Success"

uninstall:
	$(MAKE) -C src uninstall
	@echo "Success"

import_gpg:
	@echo "Path that has public.key/private.key:"
	@read GPG_PATH; \
	gpg --import $$GPG_PATH/public.key; \
	gpg --allow-secret-key-import --import $$GPG_PATH/private.key
	@echo "Imported."

test:
	docker build -t test_dotfiles .
	docker run --rm test_dotfiles
	@echo "Success"
