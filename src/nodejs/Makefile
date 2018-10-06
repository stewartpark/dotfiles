NVM_DIR=${HOME}/.nvm
NODE_VERSION=10.8.0

check:
	which git

install:
	git clone https://github.com/creationix/nvm.git "${NVM_DIR}"
	cd "${NVM_DIR}" && git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
	sh -c '. "${NVM_DIR}/nvm.sh"; nvm install ${NODE_VERSION}; nvm use ${NODE_VERSION}'

uninstall:
	rm -rf ${NVM_DIR}
