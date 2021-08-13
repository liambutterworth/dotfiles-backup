require('globals')
require('plugins')
require('interface')

local api = require('api')

api.cmd('colorscheme custom')

api.exec([[
nmap <F2> :call SynStack()<CR>
function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
]]);
