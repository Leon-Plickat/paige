"
" ▄▄▄▄▄▄                 ██
" ██▀▀▀▀█▄               ▀▀
" ██    ██   ▄█████▄   ████      ▄███▄██   ▄████▄
" ██████▀    ▀ ▄▄▄██     ██     ██▀  ▀██  ██▄▄▄▄██
" ██        ▄██▀▀▀██     ██     ██    ██  ██▀▀▀▀▀▀
" ██        ██▄▄▄███  ▄▄▄██▄▄▄  ▀██▄▄███  ▀██▄▄▄▄█
" ▀▀         ▀▀▀▀ ▀▀  ▀▀▀▀▀▀▀▀   ▄▀▀▀ ██    ▀▀▀▀▀
"                                ▀████▀▀
" File:       paige.vim
" Maintainer: Leon Henrik Plickat <leonhenrik.plickat@stud.uni-goettingen.de>
" License:    GPLv3

if !has('gui_running') && &t_Co < 256
	finish
endif

highlight clear

if exists("syntax_on")
	syntax reset
endif

set background=light

let g:colors_name = "paige"

if exists("*<SID>PaigeHighlight")
	delf <SID>PaigeHighlight
endif

" Fancy highlight wrapper function, because some highlight groups, like Normal
" apparently do not like being linked. It is not perfect, but it solves the
" problem.
function! <SID>PaigeHighlight(group, type)
	if !empty(a:type[0])
		exec "highlight " . a:group . " ctermbg=" . a:type[0]
	endif
	if !empty(a:type[1])
		exec "highlight " . a:group . " ctermfg=" . a:type[1]
	endif
	if !empty(a:type[2])
		exec "highlight " . a:group . " cterm=" . a:type[2]
	endif
	if !empty(a:type[3])
		exec "highlight " . a:group . " guibg=" . a:type[3]
	endif
	if !empty(a:type[4])
		exec "highlight " . a:group . " guifg=" . a:type[4]
	endif
	if !empty(a:type[5])
		exec "highlight " . a:group . " gui=" . a:type[5]
	endif
endfunction

" Types -> [ ctermbg, ctermfg, cterm, guibg, guifg, gui ]
let s:default_text            = [ '231', '232',          '', '#ffffff', '#080808',          '' ]
let s:default_text_bold       = [ '231', '232',      'bold', '#ffffff', '#080808',      'bold' ]
let s:default_text_italic     = [ '231', '232',    'italic', '#ffffff', '#080808',    'italic' ]
let s:default_text_underline  = [ '231', '232', 'underline', '#ffffff', '#080808', 'underline' ]

let s:alt_fg_text             = [ '231', '245',          '', '#ffffff', '#8a8a8a',          '' ]
let s:alt_fg_text_2           = [ '231', '248',          '', '#ffffff', '#a8a8a8',          '' ]

let s:alt_bg_text             = [ '254', '232',          '', '#e4e4e4', '#080808',          '' ]
let s:alt_bg_text_bold        = [ '254', '232',      'bold', '#e4e4e4', '#080808',      'bold' ]
let s:alt_bg_text_italic      = [ '254', '232',    'italic', '#e4e4e4', '#080808',    'italic' ]
let s:alt_bg_text_underline   = [ '254', '232', 'underline', '#e4e4e4', '#080808', 'underline' ]
let s:alt_bg_text_no_override = [ '254',    '',          '', '#e4e4e4',        '',          '' ]
let s:alt_bg_text_none        = [ '254', '232',      'none', '#e4e4e4', '#080808',      'none' ]
let s:alt_bg_no_fg            = [ '254', '254',      'none', '#e4e4e4', '#e4e4e4',      'none' ]

let s:green_bg_text           = [ '148', '232',          '', '#afd700', '#080808',          '' ]
let s:red_bg_text             = [ '197', '232',          '', '#ff005f', '#080808',          '' ]
let s:yellow_bg_text          = [ '220', '232',          '', '#ffd700', '#080808',          '' ]
let s:blue_bg_text            = [  '39', '232',          '', '#00afff', '#080808',          '' ]
let s:purple_bg_text          = [ '141', '232',          '', '#af87ff', '#080808',          '' ]
let s:alt_purple_bg_text      = [ '139', '232',          '', '#af87af', '#080808',          '' ]

let s:red_fg_text             = [ '231', '196',          '', '#ff005f', '#080808',          '' ]
let s:green_fg_text           = [ '231',  '34',          '', '#afd700', '#080808',          '' ]
let s:blue_fg_text            = [ '231',  '21',          '', '#ffffff', '#0000ff',          '' ]
let s:blue_fg_text_underline  = [ '231',  '21', 'underline', '#ffffff', '#0000ff', 'underline' ]

let s:menu_select             = [ '70 ', '231',      'bold', '#5faf00', '#ffffff',          '' ]
let s:menu_no_select          = [ '240', '231',          '', '#585858', '#ffffff',          '' ]
let s:menu_scroll_bar         = [ '240', '240',          '', '#585858', '#585858',          '' ]
let s:menu_scroll_bar_thumb   = [ '202', '202',          '', '#585858', '#ff5f00',          '' ]

" UI
call <sid>PaigeHighlight('Normal',           s:default_text)
call <sid>PaigeHighlight('Folded',           s:alt_bg_text)
call <sid>PaigeHighlight('CursorLine',       s:alt_bg_text_no_override)
call <sid>PaigeHighlight('CursorColumn',     s:alt_bg_text_no_override)
call <sid>PaigeHighlight('ColorColumn',      s:alt_bg_text_no_override)
call <sid>PaigeHighlight('SignColumn',       s:alt_bg_text_no_override)
call <sid>PaigeHighlight('Visual',           s:blue_bg_text)
call <sid>PaigeHighlight('VisualNOS',        s:blue_bg_text)
call <sid>PaigeHighlight('VertSplit',        s:alt_bg_text_bold)
call <sid>PaigeHighlight('Pmenu',            s:menu_no_select)
call <sid>PaigeHighlight('PmenuSel',         s:menu_select)
call <sid>PaigeHighlight('PmenuSbar',        s:menu_scroll_bar)
call <sid>PaigeHighlight('PmenuThumb',       s:menu_scroll_bar_thumb)
call <sid>PaigeHighlight('WildMenu',         s:menu_select)
call <sid>PaigeHighlight('ModeMsg',          s:alt_fg_text)
call <sid>PaigeHighlight('StatusLine',       s:alt_bg_text_bold)
call <sid>PaigeHighlight('StatusLineNC',     s:alt_bg_text)
call <sid>PaigeHighlight('StatusLineTerm',   s:alt_bg_text_bold)
call <sid>PaigeHighlight('StatusLineTermNC', s:alt_bg_text)
call <sid>PaigeHighlight('Search',           s:purple_bg_text)
call <sid>PaigeHighlight('IncSearch',        s:alt_purple_bg_text)
call <sid>PaigeHighlight('TabLineFill',      s:alt_bg_no_fg)
call <sid>PaigeHighlight('TabLineSel',       s:menu_select)
call <sid>PaigeHighlight('TabLine',          s:alt_bg_text_none)
call <sid>PaigeHighlight('EndOfBuffer',      s:alt_fg_text)
call <sid>PaigeHighlight('LineNr',           s:alt_bg_text)
call <sid>PaigeHighlight('CursorLineNr',     s:alt_bg_text)
call <sid>PaigeHighlight('MatchParen',       s:yellow_bg_text)
call <sid>PaigeHighlight('Conceal',          s:default_text)
call <sid>PaigeHighlight('Error',            s:red_bg_text)
call <sid>PaigeHighlight('ErrorMsg',         s:red_bg_text)
call <sid>PaigeHighlight('WarningMsg',       s:yellow_bg_text)

" Diff
call <sid>PaigeHighlight('DiffChange',  s:yellow_bg_text)
call <sid>PaigeHighlight('DiffAdd',     s:green_bg_text)
call <sid>PaigeHighlight('DiffDelete',  s:red_bg_text)
call <sid>PaigeHighlight('diffAdded',   s:green_fg_text)
call <sid>PaigeHighlight('diffRemoved', s:red_fg_text)
call <sid>PaigeHighlight('diffLine',    s:blue_fg_text)

" Spell
call <sid>PaigeHighlight('SpellBad',   s:red_bg_text)
call <sid>PaigeHighlight('SpellCap',   s:yellow_bg_text)
call <sid>PaigeHighlight('SpellLocal', s:yellow_bg_text)
call <sid>PaigeHighlight('SpellRare',  s:yellow_bg_text)

" netrw
call <sid>PaigeHighlight('netrwDir',      s:blue_fg_text)
call <sid>PaigeHighlight('netrwClassify', s:default_text_bold)
call <sid>PaigeHighlight('netrwExe',      s:green_fg_text)


" Generic Syntax
call <sid>PaigeHighlight('Todo',        s:yellow_bg_text)
call <sid>PaigeHighlight('Comment',     s:alt_fg_text_2)
call <sid>PaigeHighlight('Title',       s:alt_bg_text_bold)
call <sid>PaigeHighlight('PreProc',     s:default_text_bold)
call <sid>PaigeHighlight('Identifier',  s:default_text_bold)
call <sid>PaigeHighlight('Statement',   s:default_text_bold)
call <sid>PaigeHighlight('Special',     s:default_text_bold)
call <sid>PaigeHighlight('Type',        s:default_text_bold)
call <sid>PaigeHighlight('NonText',     s:default_text_bold)
call <sid>PaigeHighlight('Conditional', s:default_text_bold)
call <sid>PaigeHighlight('Repeat',      s:default_text_bold)
call <sid>PaigeHighlight('Logical',     s:default_text_bold)
call <sid>PaigeHighlight('Compare',     s:default_text_bold)
call <sid>PaigeHighlight('Label',       s:default_text_underline)
call <sid>PaigeHighlight('Constant',    s:default_text)
call <sid>PaigeHighlight('Pointer',     s:default_text)
call <sid>PaigeHighlight('Delimiter',   s:default_text)

" HTML
call <sid>PaigeHighlight('htmlLink', s:blue_fg_text_underline)

" meson
call <sid>PaigeHighlight('mesonString', s:default_text)

" Vim
call <sid>PaigeHighlight('vimHiGroup', s:default_text)

" C
call <sid>PaigeHighlight('cErrInParen', s:default_text)

" Scheme
call <sid>PaigeHighlight('schemeSyntax',      s:default_text_bold)
call <sid>PaigeHighlight('schemeFunction',    s:default_text_bold)
call <sid>PaigeHighlight('schemeParentheses', s:default_text)
call <sid>PaigeHighlight('schemeNumber',      s:default_text)
call <sid>PaigeHighlight('schemeString',      s:default_text)

" (La)Tex / vimtex
call <sid>PaigeHighlight('texComment',      s:alt_fg_text_2)
call <sid>PaigeHighlight('texSection',      s:default_text_bold)
call <sid>PaigeHighlight('texParen',        s:default_text)
call <sid>PaigeHighlight('texCmdArgs',      s:default_text)
call <sid>PaigeHighlight('texBeginEnd',     s:default_text)
call <sid>PaigeHighlight('texBeginEndName', s:default_text_bold)

" markdown
call <sid>PaigeHighlight('markdownH1',          s:alt_bg_text_bold)
call <sid>PaigeHighlight('markdownH1Delimiter', s:alt_bg_text_bold)
call <sid>PaigeHighlight('markdownH2',          s:alt_bg_text_bold)
call <sid>PaigeHighlight('markdownH2Delimiter', s:alt_bg_text_bold)
call <sid>PaigeHighlight('markdownH3',          s:alt_bg_text_bold)
call <sid>PaigeHighlight('markdownH3Delimiter', s:alt_bg_text_bold)
call <sid>PaigeHighlight('markdownH4',          s:alt_bg_text_bold)
call <sid>PaigeHighlight('markdownH4Delimiter', s:alt_bg_text_bold)
call <sid>PaigeHighlight('markdownH5',          s:alt_bg_text_bold)
call <sid>PaigeHighlight('markdownH5Delimiter', s:alt_bg_text_bold)
call <sid>PaigeHighlight('markdownH6',          s:alt_bg_text_bold)
call <sid>PaigeHighlight('markdownH6Delimiter', s:alt_bg_text_bold)
call <sid>PaigeHighlight('markdownListMarker',  s:default_text_bold)
call <sid>PaigeHighlight('markdownError',       s:default_text)
call <sid>PaigeHighlight('markdownCodeBlock',   s:green_fg_text)

" git commit
call <sid>PaigeHighlight('gitcommitSummary',   s:alt_bg_text_bold)
call <sid>PaigeHighlight('gitcommitFirstLine', s:alt_bg_text_bold)
call <sid>PaigeHighlight('gitcommitBlank',     s:red_bg_text)
call <sid>PaigeHighlight('gitcommitComment',   s:alt_fg_text_2)
call <sid>PaigeHighlight('gitcommitHeader',    s:default_text_bold)

" .desktop files
call <sid>PaigeHighlight('dtGroup',      s:alt_bg_text_bold)
call <sid>PaigeHighlight('dtTypeKey',    s:default_text_bold)
call <sid>PaigeHighlight('dtExecKey',    s:default_text_bold)
call <sid>PaigeHighlight('dtLocaleKey',  s:default_text_bold)
call <sid>PaigeHighlight('dtBooleanKey', s:default_text_bold)
call <sid>PaigeHighlight('dtStringKey',  s:default_text_bold)
call <sid>PaigeHighlight('dtDelim',      s:alt_fg_text_2)
