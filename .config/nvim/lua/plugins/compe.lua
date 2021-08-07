local compe = require('compe')

compe.setup {
    enabled = true;
    autocomplete = true;
    debug = false;
    min_length = 1;
    preselect = 'enable';
    throttle_time = 80;
    source_timeout = 200;
    resolve_timeout = 800;
    incomplete_delay = 400;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;
    documentation = true;

    source = {
        path = true;
        buffer = true;
        calc = true;
        nvim_lsp = true;
        nvim_lua = true;
        vsnip = true;
    };
}

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

_G.tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<c-n>"
    elseif vim.fn.call("vsnip#available", {1}) == 1 then
        return t "<plug>(vsnip-expand-or-jump)"
    elseif check_back_space() then
        return t "<tab>"
    else
        return vim.fn['compe#complete']()
    end
end

_G.s_tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<c-p>"
    elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
        return t "<plug>(vsnip-jump-prev)"
    else
        return t "<s-tab>"
    end
end

vim.api.nvim_set_keymap("i", "<cr>", "compe#confirm('<cr>')", { expr = true, silent = true })
vim.api.nvim_set_keymap("i", "<tab>", "v:lua.tab_complete()", { expr = true })
vim.api.nvim_set_keymap("s", "<tab>", "v:lua.tab_complete()", { expr = true })
vim.api.nvim_set_keymap("i", "<s-tab>", "v:lua.s_tab_complete()", { expr = true })
vim.api.nvim_set_keymap("s", "<s-tab>", "v:lua.s_tab_complete()", { expr = true })
