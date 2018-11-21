check:
	which curl

install:
	if hash brew 2>/dev/null; then \
		brew cask install haskell-platform haskell-stack; \
	elif hash apt-get 2>/dev/null; then \
		sudo apt-get install haskell-platform; \
	fi
	curl -sSL https://get.haskellstack.org/ | sudo sh

uninstall:
	if hash brew 2>/dev/null; then \
		brew cask uninstall haskell-platform haskell-stack; \
	elif hash apt-get 2>/dev/null; then \
		sudo apt-get purge haskell-platform; \
	fi
	rm -rf ~/.stack && sudo rm -f /usr/local/bin/stack
