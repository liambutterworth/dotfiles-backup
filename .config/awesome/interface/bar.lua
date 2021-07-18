local awful = require('awful')
local bar = {}

bar.create = function(screen, widgets)
    local bar = awful.wibar({
        position = 'top',
        screen = screen,
    })

    bar:setup(widgets)
end

return bar
