return function()
    api.set('nvim_tree_git_hl', true)

    api.set('nvim_tree_bindings', {
        { key = { '<cr>' }, cb = '<cmd>NvimTreeToggle<cr>' },
    })

    api.nmap({
        { '<cr>', '<cmd>NvimTreeToggle<cr>' },
        { '\\', '<cmd>NvimTreeFindFile<cr>' },
    })
end
