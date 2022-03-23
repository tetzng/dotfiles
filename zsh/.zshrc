eval "$(sheldon source)"
eval "$(starship init zsh)"

. /usr/local/opt/asdf/libexec/asdf.sh

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi
