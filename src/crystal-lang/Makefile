check:
	which curl

install:
	if hash brew 2>/dev/null; then \
		brew install crystal-lang --with-llvm; \
	elif hash apt-get 2>/dev/null; then \
		curl https://dist.crystal-lang.org/apt/setup.sh | sudo bash; \
		sudo apt-get install crystal; \
	fi

uninstall:
	if hash brew 2>/dev/null; then \
		brew uninstall crystal-lang; \
	elif hash apt-get 2>/dev/null; then \
		sudo apt-get purge crystal; \
	fi
