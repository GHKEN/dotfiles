function peco-git-branch()
{
    local current_buffer=$BUFFER
    local selected_line="$(git for-each-ref --format='%(refname:short) | %(committerdate:relative) | %(committername) | %(subject)' --sort=-committerdate refs/heads refs/remotes \
        | column -t -s '|' \
        | peco \
        | head -n 1 \
        | awk '{print $1}')"
    if [ -n "$selected_line" ]; then
        BUFFER="${current_buffer} ${selected_line}"
        CURSOR=$#BUFFER
    fi
    zle clear-screen
}
zle -N peco-git-branch
bindkey '^gb' peco-git-branch

function peco-git-add() {
    local SELECTED_FILE_TO_ADD="$(git status --porcelain \
        | peco --query "$LBUFFER" \
        | awk -F ' ' '{print $NF}')"
    if [ -n "$SELECTED_FILE_TO_ADD" ]; then
        BUFFER="git add $(echo "$SELECTED_FILE_TO_ADD" | tr '\n' ' ')"
        CURSOR=$#BUFFER
    fi
    zle accept-line
    zle clear-screen
}
zle -N peco-git-add
bindkey "^ga" peco-git-add
