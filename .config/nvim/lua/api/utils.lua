local utils = {}

utils.escape = function(string)
    return vim.api.nvim_replace_termcodes(string, true, true, true)
end

utils.check_back_space = function()
    local col = vim.fn.col('.') - 1

    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

return utils
