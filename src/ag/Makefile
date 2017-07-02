check:
	which curl

install:
	if hash brew 2>/dev/null; then \
		brew install ag; \
	elif hash apt-get 2>/dev/null; then \
		sudo apt-get install silversearcher-ag; \
	fi

uninstall:
	if hash brew 2>/dev/null; then \
		brew uninstall ag; \
	elif hash apt-get 2>/dev/null; then \
		sudo apt-get purge silversearcher-ag; \
	fi
