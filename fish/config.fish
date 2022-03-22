# view
set -g theme_display_date yes
set -g theme_date_format "+%F %H:%M"
set -g theme_display_git_default_branch yes
set -g theme_color_scheme dark

# asdf
source /usr/local/opt/asdf/libexec/asdf.fish

# abbr
abbr -a ....   "cd ../../.."
abbr -a ...   "cd ../.."
abbr -a ..   "cd .."
abbr -a b   "bundle"
abbr -a be   "bundle exec"
abbr -a c   "code"
abbr -a c.   "code ."
abbr -a cf   "nvim ~/development/dotfiles/fish/config.fish"
abbr -a cl   "clear"
abbr -a d   "docker"
abbr -a dc   "docker compose"
abbr -a dev   "cd ~/development"
abbr -a g   "git"
abbr -a ga.   "git add ."
abbr -a ga   "git add"
abbr -a gaa   "git add ."
abbr -a gb   "git branch"
abbr -a gc   "git commit"
abbr -a gca   'git commit --amend'
abbr -a gcho   "git checkout"
abbr -a gchob   "git checkout -b"
abbr -a gd   "git diff"
abbr -a gf   'git fetch'
abbr -a gfp   'git fetch -p'
abbr -a gi   'git init'
abbr -a gl   'git log'
abbr -a gll   "git pull"
abbr -a glo   'git log --oneline'
abbr -a gr   'git remote'
abbr -a gs   "git status"
abbr -a gsh   "git push"
abbr -a gsho   "git push origin HEAD"
abbr -a gsw   "git switch"
abbr -a k   "tree -C"
abbr -a l   'exa'
abbr -a la   'exa -a'
abbr -a mkpr   'hub pull-request -o'
abbr -a nb   "git switch -c"
abbr -a pro   "cd ~/projects"
abbr -a r   "rails"
abbr -a rs   "rspec"
abbr -a rsf   "rspec --format documentation"
abbr -a ruboa   "rubocop -A"
abbr -a scf   "source ~/.config/fish/config.fish"
abbr -a tc   "nvim ~/development/dotfiles/tmux/.tmux.conf"
abbr -a v   "nvim"
abbr -a v.   "nvim ."
abbr -a vp   "nvim ~/development/dotfiles/neovim/dein.toml"
abbr -a vv   "nvim ~/development/dotfiles/neovim/init.vim"

# starship
starship init fish | source
