NVM_DIR=${HOME}/.nvm

check:
	which git

install:
	git clone https://github.com/creationix/nvm.git "${NVM_DIR}"
	cd "${NVM_DIR}" && git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
	sudo sh -c '. "${NVM_DIR}/nvm.sh"; nvm install 10.8.0'

uninstall:
	sudo rm -rf ${NVM_DIR}
