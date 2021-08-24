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
        'nvim-telescope/telescope.nvim',

        config = require('plugins.telescope'),
        requires = 'nvim-lua/plenary.nvim',
    }
end)
