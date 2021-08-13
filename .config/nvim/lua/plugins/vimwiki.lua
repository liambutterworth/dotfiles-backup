local api = require('api')

api.global.vimwiki_list = {{
    path = '~/Dropbox/Wiki',
    syntax = 'markdown',
}}

api.map.normal('+', ':VimwikiIndex<cr>')

api.exec([[
    augroup Vimwiki
        autocmd FileType vimwiki nmap <c-]> <plug>VimwikiFollowLink
        autocmd FileType vimwiki nmap <c-t> <plug>VimwikiGoBackLink
        autocmd FileType vimwiki nmap <c-n> <plug>VimwikiNextLink
        autocmd FileType vimwiki nmap <c-p> <plug>VimwikiPrevLink
    augroup end
]], false)
