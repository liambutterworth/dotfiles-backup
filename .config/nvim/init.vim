lua require 'settings'
lua require 'mappings'
lua require 'plugins'

colorscheme custom

augroup Term
    autocmd!
    autocmd TermOpen * startinsert
    autocmd TermOpen * setlocal nonumber norelativenumber
augroup end

autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight! | colorscheme custom
