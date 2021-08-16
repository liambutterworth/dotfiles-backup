return function()
    api.set('fzf_commits_log_options', table.concat({
        '--graph',
        '--color=always',
        '--format="%C(red)%h %C(white)%s %C(green)%cr %C(blue)%an"',
    }, ' '))

    api.set('fzf_action', {
        ['ctrl-t'] = 'tab split',
        ['ctrl-s'] = 'split',
        ['ctrl-s'] = 'split',
    })

    api.set('fzf_layout', {
        window = {
            height = 0.8,
            width = 0.8,
            border = 'sharp',
        }
    })

    api.map.insert('<c-x><c-k>', '<plug>(fzf-complete-word)')
    api.map.insert('<c-x><c-j>', '<plug>(fzf-complete-file)')
    api.map.insert('<c-x><c-p>', '<plug>(fzf-complete-path)')
    api.map.insert('<c-x><c-l>', '<plug>(fzf-complete-line)')
    api.map.normal('<space><space>', ':Rg<cr>')
    api.map.normal('<space><tab>', ':Snippets<cr>')
    api.map.normal('<space><bs>', ':Buffers<cr>')
    api.map.normal('<space><cr>', ':Files<cr>')
    api.map.normal('<space>:', ':History:<cr>')
    api.map.normal('<space>?', ':Helptags<cr>')
    api.map.normal('<space>g', ':Commits!<cr>')
    api.map.normal('<space>l', ':Lines<cr>')
end
