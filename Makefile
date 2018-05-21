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
	gpg --import "$$GPG_PATH/public.key"; \
	gpg --allow-secret-key-import --import "$$GPG_PATH/private.key"
	@echo "Imported."

export_gpg:
	@echo "Path that will have public.key/private.key:"
	@read GPG_PATH; \
	gpg --output "$$GPG_PATH/public.key" --armor --export A8048874DF531A9722809EBD0729DBF8B85463C5; \
	gpg --output "$$GPG_PATH/private.key" --armor --export-secret-key A8048874DF531A9722809EBD0729DBF8B85463C5
	@echo "Exported."

test:
	docker build -t test_dotfiles .
	docker run --rm test_dotfiles
	@echo "Success"
