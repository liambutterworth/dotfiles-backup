return function()
    local compe = require('compe')

    compe.setup {
        source = {
            path = true;
            buffer = true;
            calc = true;
            nvim_lsp = true;
            nvim_lua = true;
            vsnip = true;
        };
    }

    local function shown()
        return vim.fn.pumvisible() == 1
    end

    local function escape(string)
        return vim.api.nvim_replace_termcodes(string, true, true, true)
    end

    local function check_backspace()
        local column = vim.fn.col('.') - 1

        if column == 0 then
            return true
        else
            local line = vim.fn.getline('.')
            local backspace = line:sub(column, column)

            return line:match('%s') ~= nil
        end
    end

    function tab_complete()
        if shown() then
            return escape('<c-n>')
        elseif check_backspace() then
            return escape('<tab>')
        else
            return vim.fn['compe#complete']()
        end
    end

    function s_tab_complete()
        if shown() then
            return escape('<c-p>')
        else
            return escape('<s-tab>')
        end
    end

    vim.api.nvim_set_keymap('i', '<cr>', "compe#confirm('<cr>')", { expr = true, silent = true })
    vim.api.nvim_set_keymap('i', '<c-e>', "compe#close('<c-e>')", { expr = true, silent = true })
    vim.api.nvim_set_keymap('i', '<c-f>', "compe#scroll({ 'delta': +4 })", { expr = true, silent = true })
    vim.api.nvim_set_keymap('i', '<c-b>', "compe#scroll({ 'delta': -4 })", { expr = true, silent = true })
    vim.api.nvim_set_keymap('i', '<tab>', 'v:lua.tab_complete()', { expr = true })
    vim.api.nvim_set_keymap('i', '<s-tab>', 'v:lua.s_tab_complete()', { expr = true })
    vim.api.nvim_set_keymap('s', '<tab>', 'v:lua.tab_complete()', { expr = true })
    vim.api.nvim_set_keymap('s', '<s-tab>', 'v:lua.s_tab_complete()', { expr = true })
end
