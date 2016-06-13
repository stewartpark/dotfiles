check:
	$(MAKE) -C src check

install:
	$(MAKE) -C src install

uninstall:
	$(MAKE) -C src uninstall

test:
	docker build -t test_dotfiles .
	docker run --rm test_dotfiles
