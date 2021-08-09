vim.api.nvim_exec([[
    augroup Term
        autocmd!
        autocmd TermOpen * startinsert
        autocmd TermOpen * setlocal nonumber norelativenumber
    augroup end
]], false)
