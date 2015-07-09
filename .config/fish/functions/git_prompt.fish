function git_prompt
    if test -z (git rev-parse --git-dir 2> /dev/null)
        echo ''
        return
    end
    set st (git status -s)
    echo (set_color 0d0)'('(git_current_branch)') '
end
