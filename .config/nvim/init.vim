"
" Vim
"
" :: Commands
" :: Mappings
" :: Plugins

lua require 'settings'

"
" Commands
"

autocmd TermOpen * setlocal nonumber norelativenumber | startinsert
autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif

"
" Mappings
"

nnoremap j gj
nnoremap k gk
nnoremap Y y$
nnoremap Q @q
nnoremap c* *``cgn
nnoremap c# #``cgN
nnoremap d* *``dgn
nnoremap d# #``dgN
nnoremap g= mmgg=G`m
nnoremap gQ mmgggq`

nnoremap <bs> <c-^>
nnoremap <c-s> :write<cr>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <silent> <c-w>d :bwipe<cr>
nnoremap <silent> <c-w>D :bwipe!<cr>
nnoremap <silent> <c-w>Q :quit!<cr>
nnoremap <silent> <c-w>C :close!<cr>
nnoremap <silent> <c-w>] :bnext<cr>
nnoremap <silent> <c-w>[ :bprev<cr>
nnoremap <silent> <c-w>h 10<c-w><
nnoremap <silent> <c-w>j 5<c-w>+
nnoremap <silent> <c-w>k 5<c-w>-
nnoremap <silent> <c-w>l 10<c-w>>

" nnoremap <silent> <c-w>T :call delete(expand('%')) | bdelete!<cr>

nnoremap \\ :term<cr>
nnoremap \s :split<cr>:term<cr>
nnoremap \v :vsplit<cr>:term<cr>
tnoremap <c-\> <c-\><c-n>

nnoremap <silent> <expr> [<space> 'm`' . v:count . 'O<esc>``'
nnoremap <silent> <expr> ]<space> 'm`' . v:count . 'o<esc>``'
nnoremap <silent> [e :<c-u>execute 'm-' . (v:count1 + 1)<cr>==
nnoremap <silent> ]e :<c-u>execute 'm+' . v:count1<cr>==
vnoremap <silent> [e :<c-u>execute "'<,'>m-" . (v:count1 + 1)<cr>gv=gv
vnoremap <silent> ]e :<c-u>execute "'<,'>m+" . (v:count1 + 1)<cr>gv=gv

" TODO remove
let mapleader = ' '
nnoremap <silent> <leader>r :so $MYVIMRC<cr>
nnoremap <leader>t :TSHighlightCapturesUnderCursor<cr>
nnoremap <leader>H :so $VIMRUNTIME/syntax/hitest.vim<cr>
map <leader>h :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
    \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
    \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"
" Plugins
"

if filereadable(expand("$XDG_DATA_HOME/nvim/site/autoload/plug.vim"))
    call plug#begin()

    Plug 'airblade/vim-gitgutter'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'junegunn/vim-easy-align',
    Plug 'mcchrish/nnn.vim'
    Plug 'sirver/ultisnips'
    Plug 'tomtom/tcomment_vim'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'

    " TODO troubleshoot and make faster
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'

    " Plug 'michaeljsmith/vim-indent-object'
    " Plug 'tpope/vim-unimpaired'

    " TODO remove after treesitter is working
    Plug 'posva/vim-vue'
    Plug 'pangloss/vim-javascript'
    Plug 'blankname/vim-fish'
    Plug 'tbastos/vim-lua'
    Plug 'StanAngeloff/php.vim'
    Plug 'jwalton512/vim-blade'

    " TODO get treesitter working
    " Plug 'nvim-treesitter/nvim-treesitter'
    " Plug 'nvim-treesitter/playground'
    " Plug 'windwp/nvim-autopairs'
    " Plug 'windwp/nvim-ts-autotag'

    call plug#end()
end

colorscheme custom

if exists('g:plugs') && has_key(g:plugs, 'fzf.vim') && executable('fzf')
    let g:fzf_action = { 'ctrl-t': 'tab split', 'ctrl-s': 'split', 'ctrl-v': 'vsplit' }
    let g:fzf_commits_log_format = '--format="%C(red)%h %C(white)%s %C(green)%cr %C(blue)%an"'
    let g:fzf_commits_log_options = '--graph --color=always ' . g:fzf_commits_log_format
    let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8, 'border': 'sharp' } }

    command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)
    command! -bang Buffers call fzf#vim#buffers({ 'options': '--no-preview' }, <bang>0)
    command! -bang Commits call fzf#vim#commits({ 'options': '--no-preview' }, <bang>0)

    command! -bang -nargs=* Rg call fzf#vim#grep(
        \ 'rg --column --color=always --smart-case '
        \ . shellescape(<q-args>), 1, <bang>0)

    imap <c-x><c-k> <plug>(fzf-complete-word)
    imap <c-x><c-j> <plug>(fzf-complete-file)
    imap <c-x><c-p> <plug>(fzf-complete-path)
    imap <c-x><c-l> <plug>(fzf-complete-line)

    nnoremap <space><space> :Rg<cr>
    nnoremap <space><tab> :Snippets<cr>
    nnoremap <space><bs> :Buffers<cr>
    nnoremap <space><cr> :Files<cr>
    nnoremap <space>: :History:<cr>
    nnoremap <space>? :Helptags<cr>
    nnoremap <space>g :Commits!<cr>
    nnoremap <space>l :Lines<cr>
endif

if exists('g:plugs') && has_key(g:plugs, 'goyo.vim')
    let g:limelight_conceal_ctermfg = 8

    nnoremap - :Goyo<cr>

    autocmd User GoyoEnter Limelight
    autocmd User GoyoLeave Limelight! | colorscheme custom
end

if exists('g:plugs') && has_key(g:plugs, 'nnn.vim')
    let g:nnn#action = { '<c-s>': 'split', '<c-v>': 'vsplit', '<c-v': 'tab' }
    let g:nnn#command = 'nnn -Q'
    let g:nnn#layout = { 'window': { 'width': 0.8, 'height': 0.8, 'border': 'sharp' } }
    let g:nnn#replace_netrw = 1
    let g:nnn#session = 'global'

    nnoremap <silent> <cr>f :NnnPicker %:p:h<cr>
    nnoremap <silent> <cr><cr> :NnnPicker<cr>
end

if exists('g:plugs') && has_key(g:plugs, 'nvim-lspconfig')
    lua require 'plugins'
end

if exists('g:plugs') && has_key(g:plugs, 'ultisnips')
    let g:UltiSnipsSnippetDirectories = [ $XDG_CONFIG_HOME . '/nvim/ultisnips' ]
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<c-j>'
    let g:UltiSnipsJumpBackwardTrigger = '<c-k>'

    nnoremap <s-tab> :UltiSnipsEdit<cr>
endif

if exists('g:plugs') && has_key(g:plugs, 'vim-easy-align')
    nmap ga <Plug>(EasyAlign)
    xmap ga <Plug>(EasyAlign)
endif

if exists('g:plugs') && has_key(g:plugs, 'vim-fugitive')
    nnoremap gs :Git<cr>
    nnoremap gl :Gclog<cr>
endif

if exists('g:plugs') && has_key(g:plugs, 'vim-gitgutter')
    let g:gitgutter_map_keys = 0

    nmap ]c <plug>(GitGutterNextHunk)
    nmap [c <plug>(GitGutterPrevHunk)
    omap ic <plug>(GitGutterTextObjectInnerPending)
    omap ac <plug>(GitGutterTextObjectOuterPending)
    xmap ic <plug>(GitGutterTextObjectInnerVisual)
    xmap ac <plug>(GitGutterTextObjectInnerVisual)
endif
