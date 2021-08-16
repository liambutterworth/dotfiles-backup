return function()
    api.set({
        fzf_commits_log_options = table.concat({
            '--graph',
            '--color=always',
            '--format="%C(red)%h %C(white)%s %C(green)%cr %C(blue)%an"',
        }, ' '),

        fzf_action = {
            ['ctrl-t'] = 'tab split',
            ['ctrl-s'] = 'split',
            ['ctrl-s'] = 'split',
        },

        fzf_layout = {
            window = {
                height = 0.8,
                width = 0.8,
                border = 'sharp',
            }
        },
    })

    api.map.insert({
        { '<c-x><c-k>', '<plug>(fzf-complete-word)' },
        { '<c-x><c-j>', '<plug>(fzf-complete-file)' },
        { '<c-x><c-p>', '<plug>(fzf-complete-path)' },
        { '<c-x><c-l>', '<plug>(fzf-complete-line)' },
    })

    api.map.normal({
        { '<space><space>', '<cmd>Rg<cr>' },
        { '<space><tab>', '<cmd>Snippets<cr>' },
        { '<space><bs>', '<cmd>Buffers<cr>' },
        { '<space><cr>', '<cmd>Files<cr>' },
        { '<space>:', '<cmd>History:<cr>' },
        { '<space>/', '<cmd>History/<cr>' },
        { '<space>?', '<cmd>Helptags<cr>' },
        { "<space>'", '<cmd>Marks<cr>' },
        { '<space>w', '<cmd>Windows<cr>' },
        { '<space>g', '<cmd>Commits<cr>' },
        { '<space>f', '<cmd>GFiles<cr>' },
        { '<space>s', '<cmd>GFiles?<cr>' },
        { '<space>b', '<cmd>BLines<cr>' },
        { '<space>l', '<cmd>Lines<cr>' },
    })
end
