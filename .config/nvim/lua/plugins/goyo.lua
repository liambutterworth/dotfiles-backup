return function()
    api.set('limelight_conceal_ctermfg', '8')

    api.cmd([[
        augroup Goyo
            autocmd User GoyoEnter Limelight
            autocmd User GoyoLeave Limelight! | colorscheme custom
        augroup end
    ]])
end
