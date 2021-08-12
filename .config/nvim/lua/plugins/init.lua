require 'paq' {
    'airblade/vim-gitgutter',
    'hrsh7th/nvim-compe',
    'hrsh7th/vim-vsnip',
    'junegunn/fzf',
    'junegunn/fzf.vim',
    'junegunn/goyo.vim',
    'junegunn/limelight.vim',
    'junegunn/vim-easy-align',
    'mattn/emmet-vim',
    'mcchrish/nnn.vim',
    'neovim/nvim-lspconfig',
    'nvim-treesitter/nvim-treesitter',
    'savq/paq-nvim',
    'tomtom/tcomment_vim',
    'tpope/vim-eunuch',
    'tpope/vim-fugitive',
    'tpope/vim-repeat',
    'tpope/vim-speeddating',
    'tpope/vim-surround',
    'tpope/vim-unimpaired',
    'vimwiki/vimwiki',
    'voldikss/vim-floaterm',

    -- TODO remove after finding alternative
    -- for :TSHighlightCapturesUnderCursor
    'nvim-treesitter/playground',
}

require('plugins.compe')
require('plugins.easy-align')
require('plugins.emmet')
require('plugins.fzf')
require('plugins.floaterm')
require('plugins.goyo')
require('plugins.limelight')
require('plugins.lspconfig')
require('plugins.nnn')
require('plugins.treesitter')
require('plugins.vimwiki')
require('plugins.vsnip')
