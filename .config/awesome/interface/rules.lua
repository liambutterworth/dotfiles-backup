local awful = require('awful')
local beautiful = require('beautiful')

return {
    {
        rule = {},

        properties = {
            border_color = beautiful.border_normal,
            border_width = beautiful.border_width,
            focus = awful.client.focus.filter,
            raise = true,
            keys = require('keys.client'),
            buttons = clientbuttons,
            screen = awful.screen.preferred,
            placement = awful.placement.no_overlap+awful.placement.no_offscreen
        },
    },

    {
        rule = {
            class = 'Firefox',
        },

        properties = {
            maximized = false
        },
    }
}
