local awful = require('awful')
local wibox = require('wibox')
local clock = {}

clock.create = function(screen)
    local clock = wibox.widget.textclock()

    -- local calendar = awful.widget.calendar_popup.month({
    --     screen = screen,
    --     margin = 10,

    --     style_month = {
    --         padding = 20,
    --     },
    -- })

    -- calendar:attach(clock, 'tr')

    return clock
end

return clock
