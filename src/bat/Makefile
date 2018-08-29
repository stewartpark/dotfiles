check:

install:
	if hash brew 2>/dev/null; then \
		brew install bat; \
	elif hash apt-get 2>/dev/null; then \
		cargo install bat; \
	fi

uninstall:
	if hash brew 2>/dev/null; then \
		brew uninstall ag; \
	elif hash apt-get 2>/dev/null; then \
		cargo uninstall bat; \
	fi
