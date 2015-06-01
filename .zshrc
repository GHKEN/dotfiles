#言語
export LANG=ja_JP.UTF-8

export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin

#256色ターミナル
export TERM=xterm-256color

#lsでother-writableなものでも背景色を変えない
export LS_COLORS="ow=00"

#プロンプト
autoload colors
colors
export MAINPROMPT="
%F{245}- %m >%f %F{196}%n%f %F{245}>%f %F{202}%~%f"

#補完候補の表示
autoload -U compinit
compinit

#大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#移動元のディレクトリを保持
setopt auto_pushd

#cd無しでもcd
setopt auto_cd

#alias
alias ls="ls --color"
alias la="ls -lah --color"
alias ll="ls -lh --color"

alias -g ...="../../"
alias -g ....="../../../"
alias -g .....="../../../../"
alias -g ......="../../../../../"

alias g="git"

#git info
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr " %B%F{220}*%f%b"
zstyle ':vcs_info:git:*' unstagedstr " %B%F{196}+%f%b"
zstyle ':vcs_info:*' formats "%c%u%F{045} [%b]%f"

function git-current-branch()
{
    echo `git branch 2> /dev/null | awk '{print $2}'`
}

precmd()
{
vcs_info
PROMPT=$MAINPROMPT"${vcs_info_msg_0_}"
PROMPT="$PROMPT %F{245}[%D{%T}]%f
%F{245}>%f "

alias ggpull="git pull --rebase origin `git-current-branch`"
alias ggpush="git push origin `git-current-branch`"
}

#peco
source ~/.zsh/peco.zsh

#マシンごとの設定
[ -f ~/.zsh/.zshrc_local ] && source ~/.zsh/.zshrc_local ]
