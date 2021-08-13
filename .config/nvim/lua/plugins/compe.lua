local api = require('api')
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
    if api.call.pumvisible() == 1 then
        return api.utils.escape('<c-n>')
    elseif api.utils.check_back_space() then
        return api.utils.escape('<tab>')
    else
        return api.call['compe#complete']()
    end
end

function s_tab_complete()
    if api.call.pumvisible() == 1 then
        return api.utils.escape('<c-p>')
    else
        return api.utils.escape('<s-tab>')
    end
end

api.map.insert('<cr>', "compe#confirm('<cr>')", { expr = true, silent = true })
api.map.insert('<tab>', 'v:lua.tab_complete()', { expr = true })
api.map.select('<tab>', 'v:lua.tab_complete()', { expr = true })
api.map.insert('<s-tab>', 'v:lua.s_tab_complete()', { expr = true })
api.map.select('<s-tab>', 'v:lua.s_tab_complete()', { expr = true })
