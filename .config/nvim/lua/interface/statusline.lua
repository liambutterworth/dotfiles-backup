function ActiveStatusLine()
    return table.concat({
        ' ',
        '%f',
        '%=',
        '%l,%c',
        ' ',
    })
end

function InactiveStatusLine()
    return table.concat({
        ' ',
        '%f',
        '%=',
        '%l,%c',
        ' ',
    })
end

vim.api.nvim_exec([[
augroup StatusLine
autocmd!
autocmd WinEnter,BufEnter * setlocal statusline=%!v:lua.ActiveStatusLine()
autocmd WinLeave,BufLeave * setlocal statusline=%!v:lua.InactiveStatusLine()
augroup END
]], false)
