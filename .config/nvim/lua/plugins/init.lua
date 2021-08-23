local packer = require('packer')

return packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'tpope/vim-abolish',
        'tpope/vim-commentary',
        'tpope/vim-eunuch',
        'tpope/vim-repeat',
        'tpope/vim-speeddating',
        'tpope/vim-surround',
        'tpope/vim-unimpaired',
        -- 'tpope/vim-vinegar',
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
        'hrsh7th/nvim-compe',

        config = require('plugins.compe'),
    }

    use {
        'hrsh7th/vim-vsnip',

        config = require('plugins.vsnip'),
    }

    use {
        'voldikss/vim-floaterm',

        -- cmd = { 'FloatermNew', 'FloatermToggle' },
        config = require('plugins.floaterm'),
    }

    -- use {
    --     'kyazdani42/nvim-web-devicons',
    --     config = require('plugins.devicons'),
    -- }

    use {
        'lewis6991/gitsigns.nvim',

        config = require('plugins.gitsigns'),
        requires = 'nvim-lua/plenary.nvim',
    }

    use {
        'kyazdani42/nvim-tree.lua',
        config = require('plugins.tree'),
        requires = 'kyazdani42/nvim-web-devicons',
    }

    use {
        'nvim-telescope/telescope.nvim',

        -- cmd = 'Telescope',
        config = require('plugins.telescope'),

        requires = {
            'nvim-lua/plenary.nvim',
            -- 'kyazdani42/nvim-web-devicons',
        },
    }
end)
