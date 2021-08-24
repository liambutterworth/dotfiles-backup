local statusline = require('interface.statusline')
local tabline = require('interface.tabline')

vim.o.statusline = '%!v:lua.BuildStatusLine(winnr())'
vim.o.tabline = '%!v:lua.GetTabLine()'

function BuildStatusLine(number)
    return '%{%v:lua.GetStatusLine(' .. vim.fn.winnr() .. ')%}'
end

function GetStatusLine(window)
    vim.w.is_active = window == vim.fn.winnr()

    return statusline:get()
end

function GetTabLine()
    return tabline:get()
end

vim.cmd('colorscheme custom')

-- local pong = function (func, callback)
--   assert(type(func) == "function", "type error :: expected func")
--   local thread = coroutine.create(func)
--   local step = nil
--   step = function (...)
--     local stat, ret = coroutine.resume(thread, ...)
--     assert(stat, ret)
--     if coroutine.status(thread) == "dead" then
--       (callback or function () end)(ret)
--     else
--       assert(type(ret) == "function", "type error :: expected func")
--       ret(step)
--     end
--   end
--   step()
-- end

-- local echo = function (...)
--   local args = {...}
--   local thunk = function (step)
--     step(unpack(args))
--   end
--   return thunk
-- end

-- local thread = coroutine.create(function()
--     local x, y, z = coroutine.yield(echo(1, 2, 3))
--     print(x, y, z)
--     local k, f, c = coroutine.yield(echo(4, 5, 6))
--     print(k, f, c)
-- end)

-- print(thread)
-- -- pong(thread)
