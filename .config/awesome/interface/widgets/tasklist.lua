local awful = require('awful')
local gears = require('gears')
local wibox = require('wibox')
local tasklist = {}

tasklist.buttons = gears.table.join(awful.button({}, 1, function (client)
    if client == client.focus then
        client.minimized = true
    else
        client:emit_signal('request::activate', 'tasklist', {
            raise = true
        })
    end
end))

tasklist.layout = {
    spacing = 1,
    layout = wibox.layout.fixed.horizontal,

    spacing_widget = {
        {
            forced_width = 5,
            forced_height = 24,
            thickness = 1,
            color = '#777777',
            widget = wibox.widget.separator,
        },

        valign = 'center',
        halign = 'center',
        widget = wibox.container.place,
    },
}

tasklist.template = {
    {
        wibox.widget.base.make_widget(),
        forced_height = 5,
        id = 'background_role',
        widget = wibox.container.background,
    },

    {
        margins = 5,
        widget = wibox.container.margin,

        {
            id = 'clienticon',
            widget = awful.widget.clienticon,
        },
    },

    nil,

    create_callback = function(self, client, index, objects)
        self:get_children_by_id('clienticon')[1].client = client
    end,

    layout = wibox.layout.align.vertical,
}

tasklist.create = function(screen)
    return awful.widget.tasklist {
        screen  = screen,
        filter  = awful.widget.tasklist.filter.currenttags,
        buttons = tasklist.buttons,
        layout = tasklist.layout,
        widget_template = tasklist.template,
    }
end

return tasklist
