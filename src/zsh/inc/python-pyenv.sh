export PATH="${HOME}/.pyenv/bin:${HOME}/.pyenv/shims:${HOME}/.pyenv/plugins/pyenv-virtualenv/shims:${PATH}";
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PYENV_VIRTUALENV_INIT=1;
export PYENV_SHELL=zsh

source "${HOME}/.pyenv/completions/pyenv.zsh"
command pyenv rehash 2>/dev/null

pyenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  activate|deactivate|rehash|shell)
    eval "$(pyenv "sh-$command" "$@")";;
  *)
    command pyenv "$command" "$@";;
  esac
}

_pyenv_virtualenv_hook() {
  local ret=$?
  if [ -n "$VIRTUAL_ENV" ]; then
    eval "$(pyenv sh-activate --quiet || pyenv sh-deactivate --quiet || true)" || true
  else
    eval "$(pyenv sh-activate --quiet || true)" || true
  fi
  return $ret
};

if ! [[ "$PROMPT_COMMAND" =~ _pyenv_virtualenv_hook ]]; then
  PROMPT_COMMAND="_pyenv_virtualenv_hook;$PROMPT_COMMAND";
fi
