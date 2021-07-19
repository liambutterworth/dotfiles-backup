function fzf_custom_key_bindings
    function fzf-open-widget -d "Open file or directory"
        set -l commandline (__fzf_parse_commandline)
        set -l dir $commandline[1]
        set -l fzf_query $commandline[2]
        set -l prefix $commandline[3]

        test -n "$FZF_CTRL_T_COMMAND"; or set -l FZF_CTRL_T_COMMAND "
            command find -L \$dir -mindepth 1 \\( -path \$dir'*/\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' \\) -prune \
            -o -type f -print \
            -o -type d -print \
            -o -type l -print 2> /dev/null | sed 's@^\./@@'"

        test -n "$FZF_TMUX_HEIGHT"; or set FZF_TMUX_HEIGHT 40%

        begin
            set -lx FZF_DEFAULT_OPTS "--height $FZF_TMUX_HEIGHT --reverse --bind=ctrl-z:ignore $FZF_DEFAULT_OPTS $FZF_CTRL_T_OPTS"
            eval "$FZF_CTRL_T_COMMAND | "(__fzfcmd)' -m --query "'$fzf_query'"' | while read -l r; set result $result $r; end
        end

        if [ -z "$result" ]
            commandline -f repaint
            return
        else
            commandline -t ""
        end

        commandline -it -- "$EDITOR "

        for i in $result
            commandline -it -- $prefix
            commandline -it -- (string escape $i)
            commandline -it -- ' '
        end

        commandline -f repaint
        commandline -f execute
    end
end
