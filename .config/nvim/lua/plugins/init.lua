local packer = require('packer')

return packer.startup(function(use)
    use 'wbthomason/packer.nvim'

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
        'lewis6991/gitsigns.nvim',
        config = require('plugins.gitsigns'),
        requires = 'nvim-lua/plenary.nvim',
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
        'voldikss/vim-floaterm',
        config = require('plugins.floaterm'),
    }

    use {
        'mcchrish/nnn.vim',
        config = require('plugins.nnn'),
    }

    use {
        'junegunn/fzf.vim',
        config = require('plugins.fzf'),
        requires = 'junegunn/fzf',
    }

    use {
        'junegunn/goyo.vim',
        config = require('plugins.goyo'),
        requires = 'junegunn/limelight.vim',
    }

    use {
        'junegunn/vim-easy-align',
        config = require('plugins.easy-align'),
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        config = require('plugins.treesitter'),
        run = ':TSUpdate',

        requires = {
            'joosepalviste/nvim-ts-context-commentstring',
            'nvim-treesitter/nvim-treesitter-textobjects',
            'nvim-treesitter/playground',
        },
    }
end)
