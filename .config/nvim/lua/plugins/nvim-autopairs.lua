local autopairs = require('nvim-autopairs')
local autopairs_compe = require('nvim-autopairs.completion.compe')
local autopairs_lua = require('nvim-autopairs.rules.endwise-lua')

autopairs.setup({
    check_ts = true,
})

autopairs_compe.setup({
    map_cr = true,
    map_complete = true,
})

autopairs.add_rules(autopairs_lua)
