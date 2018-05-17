check:
	which curl

install:
	curl https://sh.rustup.rs -sSf | bash -s -- -y --no-modify-path
	rustup component add rust-src
	cargo install racer

uninstall:
	rustup self uninstall
