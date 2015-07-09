function fish_prompt
    echo ''
    #ホスト
    echo -n (set_color 888)'- '(set_color 888)(hostname)
    #ユーザ
    echo -n ' > '(set_color f00)(whoami)
    #ディレクトリ
    echo -n (set_color 888)' > '(set_color e50)(prompt_pwd)' '
    #git
    set gp (git_prompt)
    if test gp
        echo -n $gp
    end
    #時間
    echo -n (set_color 888)' ['(date +%X)'] '
    echo ''
    echo (set_color 888)'> '
end
