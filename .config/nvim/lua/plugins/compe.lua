return function()
    local compe = require('compe')
    local check = require('utils.check')
    local escape = require('utils.escape')
    local map = require('utils.map')

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

    function tab_complete()
        if vim.fn.pumvisible() == 1 then
            return escape('<c-n>')
        elseif check.backspace() then
            return escape('<tab>')
        else
            return vim.fn['compe#complete']()
        end
    end

    function s_tab_complete()
        if vim.fn.pumvisible() == 1 then
            return escape('<c-p>')
        else
            return escape('<s-tab>')
        end
    end

    map.insert('<cr>', "compe#confirm('<cr>')", { expr = true, silent = true })
    map.insert('<tab>', 'v:lua.tab_complete()', { expr = true })
    map.select('<tab>', 'v:lua.tab_complete()', { expr = true })
    map.insert('<s-tab>', 'v:lua.s_tab_complete()', { expr = true })
    map.select('<s-tab>', 'v:lua.s_tab_complete()', { expr = true })
end
