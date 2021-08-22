return function()
    local config = require('nvim-tree.config')

    vim.g.nvim_tree_git_hl = 1

    vim.g.nvim_tree_bindings = {
        { key = { '<cr>', '\\' }, cb = '<cmd>NvimTreeToggle<cr>' },
        { key = '<c-s>', cb = config.nvim_tree_callback('split') },
        { key = '<c-x>', cb = '' },
    }

    vim.g.nvim_tree_show_icons = {
        git = 0,
        files = 1,
        folders = 1,
        folder_arrows = 1,
    }

    vim.api.nvim_set_keymap('n', '<cr>', '<cmd>NvimTreeToggle<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '\\', '<cmd>NvimTreeFindFile<cr>', { noremap = true })

    vim.cmd([[
        autocmd BufEnter NvimTree setlocal statusline=%#Normal#

        highlight NvimTreeIndentMarker ctermfg=magenta
        highlight NvimTreeFolderIcon ctermfg=blue
        highlight NvimTreeFolderName cterm=bold ctermfg=cyan
        highlight NvimTreeGitDirty cterm=bold ctermfg=red
        highlight NvimTreeGitStaged cterm=bold ctermfg=yellow
    ]])
end
