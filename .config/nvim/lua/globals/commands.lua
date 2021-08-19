local query = require('support.query')

function QueryConfig()
    query:open_config()
end

function ES(name)
    query:es(name)
end

vim.cmd([[

command! QueryConfig call v:lua.QueryConfig()
command! -nargs=1 ES call v:lua.ES(<f-args>)

]])
