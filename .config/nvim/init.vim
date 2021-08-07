lua require 'globals'
lua require 'plugins'

colorscheme custom

augroup Term
    autocmd!
    autocmd TermOpen * startinsert
    autocmd TermOpen * setlocal nonumber norelativenumber
augroup end

augroup Goyo
    autocmd User GoyoEnter Limelight
    autocmd User GoyoLeave Limelight! | colorscheme custom
augroup end

augroup Vimwiki
    autocmd FileType vimwiki nmap <c-]> <plug>VimwikiFollowLink
    autocmd FileType vimwiki nmap <c-t> <plug>VimwikiGoBackLink
    autocmd FileType vimwiki nmap <c-n> <plug>VimwikiNextLink
    autocmd FileType vimwiki nmap <c-p> <plug>VimwikiPrevLink
augroup end
