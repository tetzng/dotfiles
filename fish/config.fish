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
abbr -a be "bundle exec"
abbr -a bi "brew install"
abbr -a bic "brew install --cask"
abbr -a bl "brew list"
abbr -a bs "brew search"
abbr -a c code
abbr -a c. "code ."
abbr -a ca bat
abbr -a cf "nvim $DEV/dotfiles/fish/config.fish"
abbr -a ch "open -a 'Google Chrome'"
abbr -a cl clear
abbr -a d docker
abbr -a da "docker attach"
abbr -a dc "docker compose"
abbr -a dcd "docker compose down"
abbr -a dcr "docker compose run --rm"
abbr -a dcu "docker compose up"
abbr -a de "docker exec -it"
abbr -a dev "cd ~/development"
abbr -a dot "nvim $DEV/dotfiles"
abbr -a e "exec $SHELL -l"
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
abbr -a mkpr "hub pull-request -o"
abbr -a nb "git switch -c"
abbr -a pr "gh pr view --web"
abbr -a pro "cd ~/projects"
abbr -a re "gh repo view --web"
abbr -a scf "source $CONFIG/fish/config.fish"
abbr -a si "silicon --output $HOME/Downloads/silicon_(date +%Y-%m-%d_%H%M%S).png"
abbr -a sic "silicon --output $HOME/Downloads/silicon_(date +%Y-%m-%d_%H%M%S).png --from-clipboard -l"
abbr -a t tldr
abbr -a tc "nvim $DEV/dotfiles/tmux/.tmux.conf"
abbr -a tm tmux
abbr -a v nvim
abbr -a v. "nvim ."
abbr -a vv "nvim $DEV/dotfiles/nvim"
