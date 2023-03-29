# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

export GPG_TTY=$(tty)

# plugin manager
eval "$(sheldon source)"

# starship
eval "$(starship init zsh)"

# asdf
# . /usr/local/opt/asdf/libexec/asdf.sh

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

. /usr/local/etc/profile.d/z.sh

source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
