# peco
set fish_plugins theme peco

function fish_user_key_bindings
  bind \cr peco_select_history # Bind for prco history to Ctrl+r
end

# alias
alias ....="cd ../../.."
alias ...="cd ../.."
alias ..="cd .."
alias b="bundle"
alias be="bundle exec"
alias br="bundle exec rails"
alias c="code"
alias c.="code ."
alias cf="vim ~/.config/fish/config.fish"
alias cl="clear"
alias cp='cp -i'
alias d="docker"
alias dc="docker compose"
alias fp="vim ~/.fish_profile"
alias g="git"
alias ga="git add"
alias gaa="git add ."
alias gb="git branch"
alias gc="git commit"
alias gca='git commit --amend'
alias gcho="git checkout"
alias gchob="git checkout -b"
alias gd="git diff"
alias gf='git fetch'
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
alias ruboa="rubocop -a"
alias scf="source ~/.config/fish/config.fish"
alias sfp="source ~/.fish_profile"
alias tc="vim ~/.tmux.conf"
alias tori="cd ~/projects/toriders"
alias vp="vim ~/.vim/dein.toml"
alias vv="vim ~/.vimrc"
