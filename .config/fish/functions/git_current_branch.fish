function git_current_branch
    set br (git rev-parse --abbrev-ref HEAD)
    echo $br
end
