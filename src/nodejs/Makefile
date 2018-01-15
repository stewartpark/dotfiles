NVM_DIR=${HOME}/.nvm

check:
	which git

install:
	git clone https://github.com/creationix/nvm.git "${NVM_DIR}"
	cd "${NVM_DIR}" && git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
	. "${NVM_DIR}/nvm.sh" && nvm install 9.4.0

uninstall:
	rm -rf ${NVM_DIR}
