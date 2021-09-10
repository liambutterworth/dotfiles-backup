return function()
    local autopairs = require('nvim-autopairs')
    local autotag = require('nvim-ts-autotag')
    local cmp = require('nvim-autopairs.completion.cmp')

    autopairs.setup({
        check_ts = true,
    })

    autotag.setup()

    cmp.setup({
        map_cr = true,
    })

    autopairs.add_rules(require('nvim-autopairs.rules.endwise-lua'))
end
