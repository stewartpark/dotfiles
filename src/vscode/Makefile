check:
	which rpm
	which dnf

install:
	sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
	sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
	sudo dnf install -y code
	@while read i; do \
	  if [[ "$$i" =~ "#" ]]; then continue; fi; \
	  if [[ "$$i" = "" ]]; then continue; fi; \
	  code --install-extension $$i; \
	done < packages.txt
	ln -sf `pwd`/settings.json ~/.config/Code/User/settings.json

uninstall:
	sudo dnf remove code
