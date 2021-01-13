check:
	if [ "$$(uname)" != "Darwin" ]; then \
	  which sudo; \
	  which rpm; \
	  which dnf; \
	fi
	if [ "$$(uname)" == "Darwin" ]; then which code; fi

install:
	if [ "$$(uname)" != "Darwin" ]; then \
	  sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc; \
	  sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'; \
	  sudo dnf install -y code; \
	fi
	@while read i; do \
	  if [[ "$$i" =~ "#" ]]; then continue; fi; \
	  if [[ "$$i" = "" ]]; then continue; fi; \
	  code --install-extension $$i; \
	done < packages.txt

	@if [ "$$(uname)" == "Darwin" ]; then \
	  ln -sf `pwd`/settings.json ~/Library/Application\ Support/Code/User/settings.json; \
	else \
	  ln -sf `pwd`/settings.json ~/.config/Code/User/settings.json; \
	fi

uninstall:
	if [ "$(uname)" != "Darwin" ]; then sudo dnf remove -y code; fi
