local packer = require('packer')

return packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'lewis6991/gitsigns.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = require('plugins.gitsigns'),
    }

    use {
        'tpope/vim-commentary',
        'tpope/vim-eunuch',
        'tpope/vim-fugitive',
        'tpope/vim-repeat',
        'tpope/vim-speeddating',
        'tpope/vim-surround',
        'tpope/vim-unimpaired',
    }

    use {
        'neovim/nvim-lspconfig',
        config = require('plugins.lspconfig'),
    }

    use {
        'hrsh7th/nvim-compe',
        config = require('plugins.compe'),
    }

    use {
        'hrsh7th/vim-vsnip',
        config = require('plugins.vsnip'),
    }

    use {
        'mcchrish/nnn.vim',
        config = require('plugins.nnn'),
    }

    use {
        'voldikss/vim-floaterm',
        config = require('plugins.floaterm'),
    }

    use {
        'junegunn/vim-easy-align',
        config = require('plugins.easy-align'),
    }


    use {
        'junegunn/fzf.vim',
        requires = 'junegunn/fzf',
        config = require('plugins.fzf'),
    }

    use {
        'junegunn/goyo.vim',
        requires = 'junegunn/limelight.vim',
        config = require('plugins.goyo'),
    }

    use {
        'vimwiki/vimwiki',
        config = require('plugins.vimwiki')
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = require('plugins.treesitter'),

        requires = {
            'joosepalviste/nvim-ts-context-commentstring',
            'nvim-treesitter/nvim-treesitter-textobjects',
            'nvim-treesitter/playground',
        },
    }
end)
