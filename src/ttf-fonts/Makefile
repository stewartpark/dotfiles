UNAME=$(shell uname)

check:
	which cp

install:
	@if [ "$(UNAME)" = "Linux" ]; then \
		mkdir -p ~/.fonts/ && \
		cp ./*.ttf ~/.fonts/ && \
		echo "Fonts installed."; \
	else \
		echo "!!! Install fonts located in src/ttf-fonts/*.ttf"; \
	fi

uninstall:
	echo "!!! Uninstalling fonts is not supported."
