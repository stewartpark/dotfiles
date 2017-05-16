export GPG_TTY=$(tty)
eval $(keychain -q --noask --agents gpg --eval)
