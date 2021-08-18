return function()
    api.set('limelight_conceal_ctermfg', '8')
    api.nmap('|', ':Goyo<cr>')

    function goyo_enter()
        api.opt.set({
            showmode = false,
            showcmd = false,
            scrolloff = 999,
        })

        api.cmd('Limelight')
    end

    function goyo_leave()
        api.opt.set({
            showmode = true,
            showcmd = true,
            scrolloff = 5,
        })

        api.cmd('Limelight')
        api.cmd('colorscheme custom')
    end

    api.cmd([[
        autocmd! User GoyoEnter call v:lua.goyo_enter()
        autocmd! User GoyoLeave call v:lua.goyo_leave()
    ]])
end
