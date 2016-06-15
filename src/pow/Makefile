OS = $(shell uname)

check:
	which curl

install:
	if [ X"$(OS)" = X"Darwin" ]; then \
	curl get.pow.cx | sh; \
	else \
	echo "Pow is Macintosh only."; \
	fi;

uninstall:
	if [ X"$OS" = X"Darwin" ]; then \
	curl get.pow.cx/uninstall.sh | sh; \
	else \
	echo "Pow is Macintosh only."; \
	fi;
