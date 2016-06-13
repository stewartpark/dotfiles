OS = $(shell uname)

check:
	which curl

install: uninstall	
	if [ X"$(OS)" = X"Darwin" ]; then \
	curl get.pow.cx | sh; \
	else \
	echo "Pow is Mac-only."; \
	fi;

uninstall:
