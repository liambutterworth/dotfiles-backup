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

    function tab_complete()
        if api.fn.pumvisible() == 1 then
            return api.escape('<c-n>')
        elseif api.check_backspace() then
            return api.escape('<tab>')
        else
            return api.fn['compe#complete']()
        end
    end

    function s_tab_complete()
        if api.fn.pumvisible() == 1 then
            return api.escape('<c-p>')
        else
            return api.escape('<s-tab>')
        end
    end

    api.imap({
        { '<cr>', "compe#confirm('<cr>')", { expr = true, silent = true } },
        { '<c-e>', "compe#close('<c-e>')", { expr = true, silent = true } },
        { '<c-f>', "compe#scroll({ 'delta': +4 })", { expr = true, silent = true } },
        { '<c-b>', "compe#scroll({ 'delta': -4 })", { expr = true, silent = true } },
        { '<tab>', 'v:lua.tab_complete()', { expr = true } },
        { '<s-tab>', 'v:lua.s_tab_complete()', { expr = true } },
    })

    api.smap({
        { '<tab>', 'v:lua.tab_complete()', { expr = true } },
        { '<s-tab>', 'v:lua.s_tab_complete()', { expr = true } },
    })
end
