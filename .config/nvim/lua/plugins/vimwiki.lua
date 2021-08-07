local api = require('api')

api.global.vimwiki_list = {{
    path = '~/Dropbox/Wiki',
    syntax = 'markdown',
}}

api.map.normal('+', ':VimwikiIndex<cr>')
