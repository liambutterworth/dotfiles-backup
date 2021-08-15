return function()
    local map = require('utils.map')

    vim.g.fzf_commits_log_options = table.concat({
        '--graph',
        '--color=always',
        '--format="%C(red)%h %C(white)%s %C(green)%cr %C(blue)%an"',
    }, ' ')

    vim.g.fzf_action = {
        ['ctrl-t'] = 'tab split',
        ['ctrl-s'] = 'split',
        ['ctrl-v'] = 'vsplit'
    }

    vim.g.fzf_layout = {
        window = {
            height = 0.8,
            width = 0.8,
            border = 'sharp',
        }
    }

    map.insert('<c-x><c-k>', '<plug>(fzf-complete-word)')
    map.insert('<c-x><c-j>', '<plug>(fzf-complete-file)')
    map.insert('<c-x><c-p>', '<plug>(fzf-complete-path)')
    map.insert('<c-x><c-l>', '<plug>(fzf-complete-line)')
    map.normal('<space><space>', ':Rg<cr>')
    map.normal('<space><tab>', ':Snippets<cr>')
    map.normal('<space><bs>', ':Buffers<cr>')
    map.normal('<space><cr>', ':Files<cr>')
    map.normal('<space>:', ':History:<cr>')
    map.normal('<space>?', ':Helptags<cr>')
    map.normal('<space>g', ':Commits!<cr>')
    map.normal('<space>l', ':Lines<cr>')
end
