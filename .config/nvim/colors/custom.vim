"
" Custom Theme
"

set background=dark

highlight clear

highlight Constant ctermfg=green
highlight Comment cterm=bold ctermfg=black
highlight CursorLine cterm=none ctermbg=black
highlight CursorLineNr ctermbg=none ctermfg=white
highlight DiffAdd cterm=bold ctermbg=green ctermfg=black
highlight DiffChange cterm=bold ctermbg=yellow ctermfg=black
highlight DiffDelete cterm=bold ctermbg=red ctermfg=black
highlight DiffText cterm=bold ctermbg=red ctermfg=black
highlight Error cterm=bold ctermbg=none ctermfg=red
highlight Folded ctermbg=black ctermfg=white
highlight FoldColumn ctermbg=black ctermfg=white
highlight Float ctermbg=black
highlight FloatBorder ctermbg=black ctermfg=none
highlight FloatShadow ctermbg=black
highlight FloatShadowThrough cterm=bold ctermbg=yellow
highlight Identifier cterm=none ctermfg=white
highlight LineNr cterm=bold ctermfg=black
highlight MatchParen cterm=bold ctermbg=none ctermfg=yellow
highlight MatchTag ctermfg=yellow
highlight NonText cterm=bold ctermbg=none ctermfg=black
highlight Normal ctermbg=none
highlight NormalFloat ctermbg=black
highlight Number ctermfg=magenta
highlight Operator ctermfg=blue
highlight Pmenu ctermbg=black ctermfg=white
highlight PmenuSel cterm=bold ctermbg=black ctermfg=white
highlight PmenuSbar ctermbg=black
highlight PmenuThumb cterm=bold ctermbg=white ctermfg=black
highlight PreProc cterm=none ctermfg=blue
highlight Question ctermfg=yellow
highlight SignColumn ctermbg=none ctermfg=white
highlight Special ctermfg=white
highlight SpecialChar ctermfg=magenta
highlight SpellBad cterm=bold ctermbg=red ctermfg=black
highlight SpellCap cterm=bold ctermbg=yellow ctermfg=black
highlight SpellRare cterm=bold ctermbg=magenta ctermfg=black
highlight SpellLocal cterm=bold ctermbg=cyan ctermfg=black
highlight Statement ctermfg=blue
highlight StatusLine cterm=none ctermbg=black ctermfg=white
highlight StatusLineNc cterm=none ctermbg=black ctermfg=white
highlight TabLine cterm=none ctermbg=black
highlight TabLineFill cterm=none ctermbg=none
highlight TabLineSel cterm=none ctermbg=white ctermfg=black
highlight Title cterm=bold ctermfg=cyan
highlight Todo ctermbg=none ctermfg=yellow
highlight Type ctermfg=blue
highlight Underlined ctermfg=cyan
highlight VertSplit cterm=bold ctermbg=black
highlight Visual cterm=bold ctermbg=black
highlight WarningMsg ctermbg=none ctermfg=yellow

"
" Treesitter
"

highlight TSBoolean ctermfg=magenta
highlight TSConstructor ctermfg=cyan
highlight TSConstant ctermfg=cyan
highlight TSError ctermfg=red
highlight TSFunction ctermfg=cyan
highlight TSFuncBuiltin ctermfg=cyan
highlight TSMethod ctermfg=cyan
highlight TSKeyword ctermfg=blue
highlight TSNumber ctermfg=magenta
highlight TSPunctDelimiter ctermfg=white
highlight TSPunctBracket ctermfg=white
highlight TSProperty ctermfg=white
highlight TSString ctermfg=green
highlight TSStringEscape ctermfg=yellow
highlight TSTag ctermfg=blue
highlight TSTagAttribute ctermfg=cyan
highlight TSTagDelimiter ctermfg=blue
highlight TSType ctermfg=yellow
highlight TSTypeBuiltin ctermfg=yellow
highlight TSVariableBuiltin ctermfg=white

"
" CSS
"

highlight link scssTSVariable TSKeyword
highlight link scssTSProperty TSKeyword
highlight link scssTSType TSMethod

"
" Vim
"

highlight link vimHiGroup Identifier
highlight link vimGroup Identifier
highlight link vimHiAttrib SpecialChar
highlight link vimHiCtermColor SpecialChar

"
" Lua
"

highlight link luaTSConstructor TSPuncBracket

"
" Fish
"

highlight link fishTSFunction TSKeyword
highlight link fishTSFuncBuiltin TSKeyword
highlight link fishTSParameter TSNumber

"
" GitGutter
"

highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red

"
" Floaterm
"

highlight FloatermBorder ctermbg=none guibg=none

"
" LSP
"

highlight LspDiagnosticsDefaultError cterm=bold ctermfg=red
highlight LspVirtualFloatingError cterm=bold ctermfg=red
highlight LspVirtualSignError cterm=bold ctermfg=red
highlight LspVirtualTextError cterm=bold ctermfg=red
highlight LspDiagnosticsDefaultWarning cterm=bold ctermfg=yellow
highlight LspVirtualFloatingWarning cterm=bold ctermfg=yellow
highlight LspVirtualSignWarning cterm=bold ctermfg=yellow
highlight LspVirtualTextWarning cterm=bold ctermfg=yellow
highlight LspDiagnosticsDefaultInformation cterm=bold ctermfg=blue
highlight LspVirtualFloatingInformation cterm=bold ctermfg=blue
highlight LspVirtualSignInformation cterm=bold ctermfg=blue
highlight LspVirtualTextInformation cterm=bold ctermfg=blue
