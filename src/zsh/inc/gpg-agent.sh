export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export GPG_AGENT_INFO=$(gpgconf --list-dirs agent-socket)

if [[ -z $(pidof ssh-agent) && -z $(pidof gpg-agent) ]]; then
    eval $(keychain -q --noask --agents gpg --eval)
fi

# Add user-specific ssh keys to the emulated ssh agent by gpg agent.
ssh-add 2> /dev/null
