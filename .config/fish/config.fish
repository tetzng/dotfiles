set -gx GPG_TTY (tty)
fish_add_path $HOME/.cargo/bin/
fish_add_path $HOME/go/bin
fish_add_path $HOME/dev/bin

source $HOME/.config/fish/secrets.fish

if status is-interactive
  # Homebrew
  eval (/opt/homebrew/bin/brew shellenv)

  # color scheme
  scheme set tokyonight

  # rtx
  rtx activate fish | source

  # starship
  starship init fish | source

  # atuin
  atuin init fish | source

  # zoxide
  zoxide init fish | source
  set -x _ZO_DATA_DIR $XDG_DATA_HOME/zoxide

  # abbr
  abbr -a .. "cd .."
  abbr -a ... "cd ../.."
  abbr -a .... "cd ../../.."
  abbr -a b brew
  abbr -a bb "brew bundle dump -f"
  abbr -a bd "brew doctor"
  abbr -a c code
  abbr -a c. "code ."
  abbr -a d docker
  abbr -a da "docker attach"
  abbr -a dc "docker compose"
  abbr -a dcd "docker compose down"
  abbr -a dcr "docker compose run --rm"
  abbr -a dcu "docker compose up"
  abbr -a de "docker exec -it"
  abbr -a g git
  abbr -a ga "git add"
  abbr -a ga. "git add ."
  abbr -a gaa "git add ."
  abbr -a gb "git branch"
  abbr -a gc "git commit"
  abbr -a gca "git commit --amend"
  abbr -a gcho "git checkout"
  abbr -a gd "git diff"
  abbr -a gf "git fetch"
  abbr -a gfp "git fetch -p"
  abbr -a gi "git init"
  abbr -a gl "git log"
  abbr -a gll "git pull"
  abbr -a gr "git remote"
  abbr -a grs "git reset"
  abbr -a gs "git status"
  abbr -a gsh "git push"
  abbr -a gsho "git push origin HEAD"
  abbr -a gsw "git switch"
  abbr -a k "lsd --classify --long --tree"
  abbr -a l "lsd --classify"
  abbr -a la "lsd --almost-all --classify --long"
  abbr -a ll "lsd --classify --long"
  abbr -a m man
  abbr -a nb "git switch -c"
  abbr -a pr "gh pr view --web"
  abbr -a r rtx
  abbr -a repo "gh repo view --web"
  abbr -a si "silicon --output $HOME/Downloads/silicon_(date +%Y-%m-%d_%H%M%S).png"
  abbr -a sic "silicon --output $HOME/Downloads/silicon_(date +%Y-%m-%d_%H%M%S).png --from-clipboard -l"
  abbr -a t tldr
  abbr -a v nvim
end
