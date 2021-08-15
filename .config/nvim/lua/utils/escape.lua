return function(string)
    return vim.api.nvim_replace_termcodes(string, true, true, true)
end
