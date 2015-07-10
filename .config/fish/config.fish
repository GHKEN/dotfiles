setenv LANG ja_JP.UTF-8
setenv TERM xterm-256color
setenv LS_COLORS "ow=00"

alias ggpull='git pull origin (git_current_branch)'
alias ggpush='git push origin (git_current_branch)'

set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

source ~/.config/fish/local.fish
