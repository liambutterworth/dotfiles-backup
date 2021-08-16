local methods = {}

methods.cmd = function(code)
    vim.cmd(code)
end

methods.escape = function(string)
    return vim.api.nvim_replace_termcodes(string, true, true, true)
end

methods.check_backspace = function()
    local col = vim.fn.col('.') - 1

    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

return methods
