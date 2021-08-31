#
# Fish Config
#
# :: Aliases
# :: Bindings
# :: Colors
# :: Exports
# :: Startup

#
# Aliases
#

alias dot="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias fuck="sudo !!"
alias ls="ls -F --color=always --group-directories-first"
alias la="ls -A"
alias ll="ls -Ahl"
alias tree="tree --dirsfirst -I 'node_modules|plugged|vendor'"
alias xclip='xclip -selection clipboard'

#
# Bindings
#

bind -M insert \cf accept-autosuggestion
bind -M insert \cx accept-autosuggestion execute
bind -M insert \cp history-search-backward
bind -M insert \cn history-search-forward
bind -M insert \cg fzf-cd-widget

#
# Colors
#

set -g fish_color_autosuggestion brblack
set -g fish_color_cancel red
set -g fish_color_command green
set -g fish_color_comment brblack
set -g fish_color_cwd blue
set -g fish_color_end yellow
set -g fish_color_error red
set -g fish_color_escape cyan
set -g fish_color_host brblack
set -g fish_color_match green
set -g fish_color_normal white
set -g fish_color_operator yellow
set -g fish_color_param white
set -g fish_color_quote yellow
set -g fish_color_redirection yellow
set -g fish_color_search_match green
set -g fish_color_user brblack
set -g fish_pager_color_completion white
set -g fish_pager_color_description yellow
set -g fish_pager_color_prefix green
set -g fish_pager_color_progress yellow
set -g fish_pager_color_secondary magenta

#
# Exports
#

set -x FZF_COLORS (string join ',' \
    'bg:-1' \
    'bg+:-1' \
    'fg:white' \
    'fg+:white' \
    'info:yellow' \
    'border:-1' \
    'header:white' \
    'hl:green' \
    'hl+:green' \
    'marker:green' \
    'pointer:magenta' \
    'prompt:blue' \
    'spinner:cyan' \
)

set -x EDITOR 'nvim'
set -x TERM 'alacritty'
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_CACHE_HOME "$HOME/.cache"
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_STATE_HOME "$HOME/.local/state"
set -x FZF_ALT_C_COMMAND "fd --type directory"
set -x FZF_DEFAULT_COMMAND "fd --type file --follow"
set -x FZF_DEFAULT_OPTS "--color=$FZF_COLORS"
set -x PASSWORD_STORE_DIR "$XDG_DATA_HOME/pass"

#
# Startup
#

fish_ssh_agent

fish_add_path $HOME/.local/bin

if test -e $XDG_CONFIG_HOME/fish/profile.fish
    source $XDG_CONFIG_HOME/fish/profile.fish
end
