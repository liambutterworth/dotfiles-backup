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
        { '<space><space>', ':Rg<cr>' },
        { '<space><tab>', ':Snippets<cr>' },
        { '<space><bs>', ':Buffers<cr>' },
        { '<space><cr>', ':Files<cr>' },
        { '<space>:', ':History:<cr>' },
        { '<space>?', ':Helptags<cr>' },
        { '<space>g', ':Commits!<cr>' },
        { '<space>l', ':Lines<cr>' },
    })
end
