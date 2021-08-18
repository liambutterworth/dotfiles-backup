function QueryConfig()
    query:open_config()
end

vim.cmd([[

command! QueryConfig call v:lua.QueryConfig()

]])
