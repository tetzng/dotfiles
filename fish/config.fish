# view
set -g theme_display_date yes
set -g theme_date_format "+%F %H:%M"
set -g theme_display_git_default_branch yes
set -g theme_color_scheme dark

# peco
set fish_plugins theme peco

# asdf
source /usr/local/opt/asdf/libexec/asdf.fish

function fish_user_key_bindings
  bind \cr peco_select_history # Bind for prco history to Ctrl+r
end

# alias
alias ....="cd ../../.."
alias ...="cd ../.."
alias ..="cd .."
alias b="bundle"
alias be="bundle exec"
alias c="code"
alias c.="code ."
alias cf="nvim ~/.config/fish/config.fish"
alias cl="clear"
alias cp='cp -i'
alias d="docker"
alias dc="docker compose"
alias dev="cd ~/development"
alias fp="nvim ~/.fish_profile"
alias g="git"
alias ga.="git add ."
alias ga="git add"
alias gaa="git add ."
alias gb="git branch"
alias gc="git commit"
alias gca='git commit --amend'
alias gcho="git checkout"
alias gchob="git checkout -b"
alias gd="git diff"
alias gf='git fetch'
alias gfp='git fetch -p'
alias gi='git init'
alias gl='git log'
alias gll="git pull"
alias glo='git log --oneline'
alias gr='git remote'
alias gs="git status"
alias gsh="git push"
alias gsho="git push origin HEAD"
alias gsw="git switch"
alias k="tree -C"
alias la='ls -a'
alias mkpr='hub pull-request -o'
alias mv='mv -i'
alias nb="git switch -c"
alias pro="cd ~/projects"
alias r="rails"
alias rm="rm -i"
alias rs="rspec"
alias rsf="rspec --format documentation"
alias ruboa="rubocop -A"
alias scf="source ~/.config/fish/config.fish"
alias tc="nvim ~/.tmux.conf"
alias v="nvim"
alias vp="nvim ~/.config/nvim/dein.toml"
alias vv="nvim ~/.config/nvim/init.vim"

source /usr/local/opt/asdf/libexec/asdf.fish
