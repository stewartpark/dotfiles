if [[ -z "$TMUX" ]] && [[ "$TERM" =~ xterm.* ]] && which tmux >& /dev/null; then
  if ! tmux ls -F '#{session_name}' | grep "^$USER$" > /dev/null; then
    tmux new-session -s $USER \; detach
  fi

  # Allocating a session ID: always just bump the counter. Because of
  # differences between bash and zsh, working with arrays to densely pack
  # session IDs is cumbersome.

  session_max=$(tmux ls -F '#{session_name}' \
                | egrep "^$USER-[0-9]+$" \
                | sed "s/^$USER-//" \
                | sort -rn \
                | head -n1)
  session_index=$((${session_max:--1} + 1))

  exec tmux -f ~/.tmux.conf new-session -s $USER-$session_index -t $USER
fi
