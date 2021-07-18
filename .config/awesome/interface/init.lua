local awful = require('awful')
local beautiful = require('beautiful')
local gears = require('gears')
local wibox = require('wibox')
local bar = require('interface.bar')
local tasklist = require('interface.tasklist')
local taglist = require('interface.taglist')

awful.layout.layouts = require('interface.layouts')
awful.rules.rules = require('interface.rules')

awful.screen.connect_for_each_screen(function(screen)
    gears.wallpaper.maximized('/home/liam/Pictures/wallpapers/pagota.jpg', screen)

    awful.tag({ '1', '2', '3', '4', '5' }, screen, awful.layout.layouts[1])

    -- calendar:attach(clock, 'tr')

    local clock = wibox.widget.textclock()

    local calendar = awful.widget.calendar_popup.month({
        margin = 10,
        padding = 20,
        screen = screen,
        spacing = 5,
    })

    -- calendar:attach(clock, 'tr')

    local popup = awful.popup {
        screen = screen,
        ontop = true,
        visible = false,
        placement = awful.placement.top_left,

        widget = wibox.widget {
            date = os.date('*t'),
            font = beautiful.get_font(),
            widget = wibox.widget.calendar.month,
        },

        shape = function (cr, width, height)
            gears.shape.rounded_rect(cr, width, height, 5)
        end,
    }

    clock.buttons = {
        awful.button({}, 1, function()
            if not popup.visible then
                popup.visible = false
            else
                popup.visible = true
            end
        end),
    }

    -- clock:connect_signal('mouse::press', function()
    --     popup.visible = true
    -- end)

    -- clock:connect_signal('mouse::release', function()
    --     popup.visible = false
    -- end)

    screen.bar = bar.create(screen)

    screen.bar:setup {
        layout = wibox.layout.align.horizontal,
        expand = 'none',

        {
            layout = wibox.layout.fixed.horizontal,
            taglist.create(screen),
        },

        tasklist.create(screen),

        {
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.systray(),
            clock,
        },
    }
end)

client.connect_signal('mouse::enter', function(client)
    client:emit_signal('request::activate', 'mouse_enter', { raise = false })
end)

client.connect_signal('focus', function(client)
    client.border_color = beautiful.border_focus
end)

client.connect_signal('unfocus', function(client)
    client.border_color = beautiful.border_normal
end)
