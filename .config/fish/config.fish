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
alias ls="ls -F --color=always --group-directories-first"
alias la="ls -A"
alias ll="ls -Ahl"
alias n='nnn -QS'
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

set -x FZF_COLORS (string join ',' \
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

set -x EDITOR 'nvim'
set -x TERM 'alacritty'
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_CACHE_HOME "$HOME/.cache"
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_STATE_HOME "$HOME/.local/state"
set -x DOCKER_CONFIG "$XDG_CONFIG_HOME/docker"
set -x LESSHISTFILE "$XDG_CACHE_HOME/less"
set -x NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"
set -x CARGO_HOME "$XDG_DATA_HOME/cargo"
set -x RUSTUP_HOME "$XDG_DATA_HOME/rustup"
set -x PYENV_ROOT "$XDG_DATA_HOME/pyenv"
set -x PYTHON3_HOST_PROG (command -v python)
set -x NNN_BMS 'c:~/.config;d:~/Development'
set -x NNN_PLUG 'f:fzcd;o:fzopen'
set -x NNN_COLORS '4444'
set -x NNN_FCOLORS '020304020705060701030501'
set -x NNN_USE_EDITOR 1
set -x NNN_TMPFILE "$XDG_CONFIG_HOME/nnn/.lastd"
set -x FZF_DEFAULT_COMMAND "fd --type file --follow"
set -x FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
set -x FZF_ALT_C_COMMAND "fd --type directory"
set -x FZF_DEFAULT_OPTS "--color $FZF_COLORS --no-preview"

#
# Startup
#

fish_add_path $HOME/.local/bin

if test -e $XDG_CONFIG_HOME/fish/profile.fish
    source $XDG_CONFIG_HOME/fish/profile.fish
end
