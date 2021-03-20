" ------------------------------------------------------------------------------
" # Everything Cosmetic
" ------------------------------------------------------------------------------

" Overall colour scheme
colorscheme base16-monokai

" Customize vertical split character
set fillchars+=vert:\ ,

" Highlight 121st character on lines that exceed 120
call matchadd('ColorColumn', '\%121v', 100)

" Helper to fuzzy find highlights
command! -nargs=1 -complete=highlight FindHighlight
  \ exec 'filter /\c.*' . substitute('<args>', ' ', '\\\&\.\*', '') . '/ hi'

" Customize UI colors
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight Search ctermbg=blue ctermfg=white
highlight IncSearch ctermbg=red ctermfg=white
highlight link Searchlight Incsearch
highlight Sneak ctermbg=blue ctermfg=white
highlight Visual ctermbg=black
highlight SneakScope ctermbg=black ctermfg=white
highlight LineNr ctermbg=none
highlight CursorLineNR ctermbg=black ctermfg=black
highlight SignColumn ctermbg=none
highlight ColorColumn ctermbg=black
highlight TabLine ctermbg=none ctermfg=darkgrey
highlight TabLineFill ctermbg=none ctermfg=white
highlight TabLineSel ctermbg=none ctermfg=white
highlight SignifySignAdd ctermbg=none ctermfg=green
highlight SignifySignChange ctermbg=none ctermfg=yellow
highlight SignifySignDelete ctermbg=none ctermfg=red
highlight VertSplit ctermbg=none ctermfg=none
highlight StatusLine ctermfg=none ctermbg=none
highlight StatusLineNC ctermfg=none ctermbg=none
highlight CursorLine ctermbg=black ctermfg=none
highlight QuickFixLine ctermbg=black ctermfg=none
highlight ALEErrorSign ctermbg=none ctermfg=red
highlight ALEWarningSign ctermbg=none ctermfg=magenta
highlight Pmenu ctermfg=grey ctermbg=black
highlight PmenuSel ctermfg=white ctermbg=blue
highlight PmenuSbar ctermbg=black
highlight PmenuThumb ctermbg=white
highlight Folded ctermbg=black ctermfg=darkgrey
highlight FoldColumn ctermbg=none ctermfg=darkgrey
highlight clear DiffChange
highlight DiffText ctermbg=blue ctermfg=white
highlight DiffAdd ctermbg=green ctermfg=white
highlight DiffDelete ctermbg=red ctermfg=white

" Telescope colours
" Highlights: telescope
highlight TelescopeBorder ctermfg=darkgrey
highlight TelescopePromptBorder ctermfg=darkgrey
highlight TelescopeResultsBorder ctermfg=darkgrey
highlight TelescopePreviewBorder ctermfg=darkgrey

" Customize syntax colours
" Highlights: treesitter
highlight TSFunction ctermfg=white
highlight TSMethod ctermfg=white
highlight TSProperty ctermfg=white
highlight TSConstant ctermfg=magenta
highlight TSVariable ctermfg=red
highlight TSVariableBuiltin ctermfg=red
highlight TSString ctermfg=blue
highlight TSKeyword ctermfg=green
highlight TSBoolean ctermfg=magenta
highlight TSNumber ctermfg=yellow
highlight TSInclude ctermfg=blue
highlight TSType ctermfg=green
highlight TSTypeBuiltin ctermfg=green
highlight TSConstructor ctermfg=white
highlight TSPunctDelimiter ctermfg=white
highlight TSPunctBracket ctermfg=white
highlight TSConditional ctermfg=green
highlight TSTag ctermfg=green
