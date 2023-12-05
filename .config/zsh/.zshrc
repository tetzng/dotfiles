export GPG_TTY=$(tty)

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# plugin manager
eval "$(sheldon source)"

# starship
eval "$(starship init zsh)"

# rtx
eval "$(rtx activate zsh)"

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi
