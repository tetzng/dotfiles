if status is-interactive
  # Homebrew
  eval (/opt/homebrew/bin/brew shellenv)

  # color scheme
  scheme set tokyonight

  # asdf
  source (brew --prefix asdf)/libexec/asdf.fish

  # starship
  starship init fish | source

  # abbr
  abbr -a .. "cd .."
  abbr -a ... "cd ../.."
  abbr -a .... "cd ../../.."
  abbr -a a asdf
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
  abbr -a k "exa --icons -l -F -T"
  abbr -a l "exa --icons -l -F"
  abbr -a la "exa --icons -l -F -a"
  abbr -a m man
  abbr -a nb "git switch -c"
  abbr -a pr "gh pr view --web"
  abbr -a repo "gh repo view --web"
  abbr -a si "silicon --output $HOME/Downloads/silicon_(date +%Y-%m-%d_%H%M%S).png"
  abbr -a sic "silicon --output $HOME/Downloads/silicon_(date +%Y-%m-%d_%H%M%S).png --from-clipboard -l"
  abbr -a t tldr
  abbr -a v nvim
  abbr -a v. "nvim ."
end
