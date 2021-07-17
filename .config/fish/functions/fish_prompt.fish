function pad_prompt -e fish_preexec -e fish_postexec
    echo
end

function fish_prompt
    set -l directory (set_color -o blue)(dirs)
    set -l branch (set_color black)(git branch --show-current 2>/dev/null)

    set -l character (set_color magenta)(switch $fish_bind_mode
        case default; echo \U276E
        case insert;  echo \U276F
    end)(set_color normal)

    printf "\033[J%s %s\n%s " "$directory" "$branch" "$character"
end
