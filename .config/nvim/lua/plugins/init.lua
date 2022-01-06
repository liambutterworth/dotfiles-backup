local packer = require('packer')

return packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'tpope/vim-abolish',
        'tpope/vim-commentary',
        'tpope/vim-eunuch',
        'tpope/vim-fugitive',
        'tpope/vim-repeat',
        'tpope/vim-surround',
        'tpope/vim-unimpaired',
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

    use {
        'neovim/nvim-lspconfig',

        config = require('plugins.lspconfig'),
    }

    use {
        'hrsh7th/nvim-cmp',

        config = require('plugins.cmp'),

        requires = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-calc',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-vsnip',
        },
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
        'nvim-telescope/telescope.nvim',

        config = require('plugins.telescope'),

        requires = {
            'nvim-lua/plenary.nvim',
            'kyazdani42/nvim-web-devicons',
            'nvim-telescope/telescope-file-browser.nvim',
        },
    }

    use {
        'lewis6991/gitsigns.nvim',

        config = require('plugins.gitsigns'),
        requres = 'nvim-lua/plenary.nvim',
    }

    use {
        'windwp/nvim-autopairs',

        config = require('plugins.autopairs'),
        requires = 'windwp/nvim-ts-autotag',
    }

    use {
        'junegunn/vim-easy-align',

        config = require('plugins.easy-align'),
    }

    use {
        'kyazdani42/nvim-tree.lua',

        requires = 'kyazdani42/nvim-web-devicons',
        config = require('plugins.nvim-tree'),
    }
end)
