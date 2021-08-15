vim.cmd([[
    augroup Term
        autocmd!
        autocmd TermOpen * startinsert
        autocmd TermOpen * setlocal nonumber norelativenumber
    augroup end
]])
