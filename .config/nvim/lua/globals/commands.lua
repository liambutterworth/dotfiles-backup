function TestingCommand(foo)
    print(foo)
end

api.cmd([[

command! -complete=file -nargs=1 Test call v:lua.TestingCommand(<f-args>)

]])
