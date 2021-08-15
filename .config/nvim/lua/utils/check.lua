local check = {}

check.backspace = function()
    local col = vim.fn.col('.') - 1

    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

return check
