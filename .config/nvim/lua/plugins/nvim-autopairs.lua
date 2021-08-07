local autopairs = require('nvim-autopairs')
local compe = require('nvim-autopairs.completion.compe')
local lua = require('nvim-autopairs.rules.endwise-lua')

autopairs.setup({
    check_ts = true,
})

autopairs.add_rules(lua)

compe.setup({
    map_cr = true,
    map_complete = true,
})
