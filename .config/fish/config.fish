#
# Fish Config
#
# :: Aliases
# :: Bindings
# :: Colors
# :: Exports

#
# Aliases
#

alias dot="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias ls="ls -F --color=always --group-directories-first"
alias la="ls -A"
alias ll="ls -Ahl"
alias tree="tree --dirsfirst -I 'node_modules|plugged|vendor'"

#
# Bindings
#

bind -M insert \cf accept-autosuggestion
bind -M insert \cx accept-autosuggestion execute
bind -M insert \cp history-search-backward
bind -M insert \cn history-search-forward
bind -M insert \cg fzf-cd-widget
bind -M insert \co fzf-open-widget

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
set -g fish_color_normal red
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

set -gx FZF_COLORS (string join ',' \
    "bg:-1" \
    "bg+:-1" \
    "fg:white" \
    "fg+:white" \
    "info:yellow" \
    "border:-1" \
    "header:white" \
    "hl:green" \
    "hl+:green" \
    "marker:green" \
    "pointer:magenta" \
    "prompt:blue" \
    "spinner:cyan" \
)

set -gx EDITOR 'nvim'
set -gx TERM 'alacritty'
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"
set -gx DOCKER_CONFIG "$XDG_CONFIG_HOME/docker"
set -gx LESSHISTFILE "$XDG_CACHE_HOME/less"
set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup"
set -gx PYENV_ROOT "$XDG_DATA_HOME/pyenv"
set -gx PYTHON3_HOST_PROG (command -v python)
set -gx NNN_BMS 'h:~;c:~/.config;d:~/Development'
set -gx NNN_PLUG 'f:fzcd;o:fzopen'
set -gx NNN_COLORS '4444'
set -gx NNN_FCOLORS '020304020705060701030501'
set -gx FZF_DEFAULT_COMMAND "fd --type file --follow"
set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
set -gx FZF_ALT_C_COMMAND "fd --type directory"
set -gx FZF_DEFAULT_OPTS "--color $FZF_COLORS --no-preview"

if test -e $XDG_CONFIG_HOME/fish/profile.fish
    source $XDG_CONFIG_HOME/fish/profile.fish
end
