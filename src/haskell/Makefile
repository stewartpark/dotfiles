check:
	which curl

install:
	if hash brew 2>/dev/null; then \
		brew cask install haskell-platform; \
	elif hash apt-get 2>/dev/null; then \
		sudo apt-get install haskell-platform; \
	fi

uninstall:
	if hash brew 2>/dev/null; then \
		brew cask uninstall haskell-platform; \
	elif hash apt-get 2>/dev/null; then \
		sudo apt-get purge haskell-platform; \
	fi
