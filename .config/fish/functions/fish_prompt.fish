function fish_prompt
    echo ''
    echo (set_color 888)'- '(whoami)' > '(set_color f00)(hostname)(set_color 888)' > '(set_color e50)(prompt_pwd)(set_color 888)' ['(date +%X)']'
    echo (set_color 888)'> '
end
