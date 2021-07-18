local awful = require('awful')
local beautiful = require('beautiful')
local gears = require('gears')
local wibox = require('wibox')
local bar = require('interface.bar')
local tasklist = require('interface.widgets.tasklist')
local taglist = require('interface.widgets.taglist')
local clock = require('interface.widgets.clock')

awful.layout.layouts = require('interface.layouts')
awful.rules.rules = require('interface.rules')

awful.screen.connect_for_each_screen(function(screen)
    gears.wallpaper.maximized('/home/liam/Pictures/wallpapers/pagota.jpg', screen)
    awful.tag({ '1', '2', '3', '4', '5' }, screen, awful.layout.layouts[1])

    bar.create(screen, {
        layout = wibox.layout.align.horizontal,
        expand = 'none',

        {
            layout = wibox.layout.fixed.horizontal,
            taglist.create(screen),
        },

        tasklist.create(screen),

        {
            layout = wibox.layout.fixed.horizontal,
            clock.create(screen),
        },
    })
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
