lua require 'settings'
lua require 'mappings'

augroup TERM
    autocmd!
    autocmd TermOpen * startinsert
    autocmd TermOpen * setlocal nonumber norelativenumber
augroup END

" TODO remove
nnoremap <space>t :TSHighlightCapturesUnderCursor<cr>

if filereadable(expand("$XDG_DATA_HOME/nvim/site/autoload/plug.vim"))
    call plug#begin()

    Plug 'airblade/vim-gitgutter'
    Plug 'hrsh7th/nvim-compe'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'joosepalviste/nvim-ts-context-commentstring'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'junegunn/vim-easy-align',
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/playground'
    Plug 'mcchrish/nnn.vim'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-speeddating'
    Plug 'vimwiki/vimwiki'
    Plug 'windwp/nvim-autopairs'
    Plug 'windwp/nvim-ts-autotag'

    " TODO remove after https://github.com/nvim-treesitter/nvim-treesitter/issues/1388
    Plug 'posva/vim-vue'

    call plug#end()
end

lua require 'plugins'

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

    autocmd User GoyoEnter Limelight
    autocmd User GoyoLeave Limelight! | colorscheme custom

    nnoremap - :Goyo<cr>
end

if exists('g:plugs') && has_key(g:plugs, 'nnn.vim')
    let g:nnn#action = { '<c-s>': 'split', '<c-v>': 'vsplit', '<c-v': 'tab' }
    let g:nnn#command = 'n'
    let g:nnn#layout = { 'window': { 'width': 0.8, 'height': 0.8, 'border': 'sharp' } }
    let g:nnn#replace_netrw = 1
    let g:nnn#set_default_mappings = 0

    nnoremap <silent> <cr><cr> :NnnPicker<cr>
    nnoremap <silent> <cr>f :NnnPicker %:p:h<cr>
end

if exists('g:plugs') && has_key(g:plugs, 'vim-easy-align')
    nmap ga <Plug>(EasyAlign)
    xmap ga <Plug>(EasyAlign)
endif

if exists('g:plugs') && has_key(g:plugs, 'vim-vsnip')
    let g:vsnip_snippet_dir = expand('~/.config/nvim/snippets')

    imap <expr> <C-j> vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-j>'
    smap <expr> <C-j> vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-j>'
end
