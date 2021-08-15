return function()
    local map = require('utils.map')

    vim.g.vimwiki_list = {{
        path = '~/Dropbox/Wiki',
        syntax = 'markdown',
    }}

    map.normal('+', ':VimwikiIndex<cr>')

    vim.cmd([[
        augroup Vimwiki
            autocmd FileType vimwiki nmap <c-]> <plug>VimwikiFollowLink
            autocmd FileType vimwiki nmap <c-t> <plug>VimwikiGoBackLink
            autocmd FileType vimwiki nmap <c-n> <plug>VimwikiNextLink
            autocmd FileType vimwiki nmap <c-p> <plug>VimwikiPrevLink
        augroup end
    ]])
end
