if [[ ! -o interactive ]]; then
    return
fi

compctl -K _91 91

_91() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(91 commands)"
  else
    completions="$(91 completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
