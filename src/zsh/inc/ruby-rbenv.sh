export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
export RBENV_SHELL=bash
source ~/.rbenv/completions/rbenv.zsh
command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(rbenv "sh-$command" "$@")";;
  *)
    command rbenv "$command" "$@";;
  esac
}
