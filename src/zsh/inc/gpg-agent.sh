export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

eval $(keychain -q --noask --agents gpg --eval)

# Add user-specific ssh keys to the emulated ssh agent by gpg agent.
ssh-add 2> /dev/null
