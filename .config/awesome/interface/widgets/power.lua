local awful = require('awful')
local beautiful = require('beautiful')
local wibox = require('wibox')
local power = {}

power.create = function(screen)
    local button = wibox.widget {
        widget =  wibox.container.margin,
        margins = 4,

        {
            widget = wibox.widget.imagebox,
            image = beautiful.icon('arch', beautiful.fg_normal),
            resize = true,
        },
    }

    local popup = awful.popup {
        position = awful.placement.top_left,
        ontop = true,
        visible = true,

        widget = {
            widget = wibox.container.margin,

            {
                layout = wibox.layout.fixed.vertical,

                { widget = wibox.widget.textbox, text = 'Power off' },
                { widget = wibox.widget.textbox, text = 'Reboot' },
            },
        }
    }

    button:buttons(awful.util.table.join(
        awful.button({}, 1, function()
            popup.visible = not popup.visible
        end)
    ))

    return button
end

return power
