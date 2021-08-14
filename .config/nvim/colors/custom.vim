"
" Custom Theme
"
" :: General
" :: Treesitter
" :: Tabline
" :: Statusline
" :: Pmenu
" :: Float
" :: Syntax
" :: Plugins

set background=dark

highlight clear

"
" General
"

highlight Constant ctermfg=green
highlight Comment cterm=bold ctermfg=black
highlight Error cterm=bold ctermbg=none ctermfg=red
highlight Folded ctermbg=black ctermfg=white
highlight FoldColumn ctermbg=black ctermfg=white
highlight Identifier cterm=none ctermfg=white
highlight Info cterm=bold ctermfg=blue
highlight LineNr cterm=bold ctermfg=black
highlight MatchParen cterm=bold ctermbg=none ctermfg=yellow
highlight NonText cterm=bold ctermbg=none ctermfg=black
highlight Normal ctermbg=none
highlight NormalFloat ctermbg=black
highlight Number ctermfg=magenta
highlight Operator ctermfg=blue
highlight Pmenu ctermbg=black ctermfg=white
highlight PreProc cterm=none ctermfg=blue
highlight Question ctermfg=yellow
highlight SignColumn ctermbg=none ctermfg=white
highlight Special ctermfg=white
highlight SpecialChar ctermfg=magenta
highlight Statement ctermfg=blue
highlight Title cterm=bold ctermfg=cyan
highlight Todo ctermbg=none ctermfg=yellow
highlight Type ctermfg=blue
highlight Underlined ctermfg=cyan
highlight VertSplit cterm=bold ctermbg=black
highlight Visual cterm=bold ctermbg=black
highlight Warning cterm=bold ctermfg=yellow
highlight WarningMsg ctermfg=yellow

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
" Tabline
"

highlight TabLine cterm=none ctermbg=black
highlight TabLineFill cterm=none ctermbg=none
highlight TabLineSel cterm=none ctermbg=white ctermfg=black

"
" Statusline
"

highlight StatusLine cterm=none ctermbg=black ctermfg=white
highlight StatusLineNc cterm=none ctermbg=none ctermfg=white
highlight StatusLineLn cterm=bold ctermbg=black ctermfg=white
highlight StatusLineSep cterm=none ctermbg=black ctermfg=none
highlight StatusLineBranch cterm=bold ctermbg=black ctermfg=blue
highlight StatusLineInactive cterm=bold ctermbg=white ctermfg=black
highlight StatusLineInactiveSep cterm=bold ctermbg=black ctermfg=white
highlight StatusLineModified cterm=bold ctermbg=yellow ctermfg=black
highlight StatusLineModifiedSep cterm=bold ctermbg=black ctermfg=yellow
highlight StatusLineUnmodified cterm=bold ctermbg=green ctermfg=black
highlight StatusLineUnmodifiedSep cterm=bold ctermbg=black ctermfg=green
highlight StatusLineReadOnly cterm=bold ctermbg=red ctermfg=black
highlight StatusLineReadOnlySep cterm=bold ctermbg=black ctermfg=red
highlight StatusLineHasErrors cterm=bold ctermbg=black ctermfg=red
highlight StatusLineHasWarnings cterm=bold ctermbg=black ctermfg=yellow
highlight StatusLineClean cterm=bold ctermbg=black ctermfg=green

"
" Pmenu
"

highlight PmenuSel cterm=bold ctermbg=black ctermfg=white
highlight PmenuSbar ctermbg=black
highlight PmenuThumb cterm=bold ctermbg=white ctermfg=black

"
" Float
"

highlight Float ctermbg=black
highlight FloatBorder ctermbg=black ctermfg=none
highlight FloatShadow ctermbg=black
highlight FloatShadowThrough cterm=bold ctermbg=yellow

"
" Syntax
"

" CSS

highlight link scssTSVariable TSKeyword
highlight link scssTSProperty TSKeyword
highlight link scssTSType TSMethod

" Vim

highlight link vimHiGroup Identifier
highlight link vimGroup Identifier
highlight link vimHiAttrib SpecialChar
highlight link vimHiCtermColor SpecialChar

" Lua

highlight link luaTSConstructor TSPuncBracket

" Fish

highlight link fishTSFunction TSKeyword
highlight link fishTSFuncBuiltin TSKeyword
highlight link fishTSParameter TSNumber

"
" Plugins
"

" Git Gutter

highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red

" Floaterm

highlight FloatermBorder ctermbg=none guibg=none

" LSP

highlight link LspDiagnosticsDefaultError Error
highlight link LspVirtualFloatingError Error
highlight link LspVirtualSignError Error
highlight link LspVirtualTextError Error
highlight link LspDiagnosticsDefaultWarning Warning
highlight link LspVirtualFloatingWarning Warning
highlight link LspVirtualSignWarning Warning
highlight link LspVirtualTextWarning Warning
highlight link LspDiagnosticsDefaultInformation Info
highlight link LspVirtualFloatingInformation Info
highlight link LspVirtualSignInformation Info
highlight link LspVirtualTextInformation Info
