function git_current_branch
    set br (git branch --contains 2> /dev/null | awk '{print $2}')
    echo $br
end
