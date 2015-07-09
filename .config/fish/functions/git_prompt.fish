function git_prompt
    set st (git status -s 2>&1)
    if test (echo $st | grep 'Not a git repository')
        echo ''
        return
    end
    echo (set_color 0d0)'('(git_current_branch)') '
end
