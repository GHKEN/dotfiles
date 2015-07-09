setenv LANG ja_JP.UTF-8
setenv TERM xterm-256color
setenv LS_COLORS "ow=00"

alias ggpull='git pull origin (git_current_branch)'
alias ggpush='git push origin (git_current_branch)'

eval (cat ~/.config/fish/local.fish)
