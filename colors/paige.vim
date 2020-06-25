" Paige vim colourscheme

set background=light
if version > 580
	highlight clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "paige"

" Types
highlight Default_text            ctermbg=231 ctermfg=232                  guibg=#ffffff guifg=#080808
highlight Default_text_bold       ctermbg=231 ctermfg=232 cterm=bold       guibg=#ffffff guifg=#080808 gui=bold
highlight Default_text_italic     ctermbg=231 ctermfg=232 cterm=italic     guibg=#ffffff guifg=#080808 gui=italic
highlight Default_text_underline  ctermbg=231 ctermfg=232 cterm=underline  guibg=#ffffff guifg=#080808 gui=underline

highlight AltFg_text              ctermbg=231 ctermfg=245                  guibg=#ffffff guifg=#8a8a8a
highlight AltFg_text_2            ctermbg=231 ctermfg=248                  guibg=#ffffff guifg=#a8a8a8

highlight AltBg_text              ctermbg=254 ctermfg=232                  guibg=#e4e4e4 guifg=#080808
highlight AltBg_text_bold         ctermbg=254 ctermfg=232 cterm=bold       guibg=#e4e4e4 guifg=#080808 gui=bold
highlight AltBg_text_italic       ctermbg=254 ctermfg=232 cterm=italic     guibg=#e4e4e4 guifg=#080808 gui=italic
highlight AltBg_text_underline    ctermbg=254 ctermfg=232 cterm=underline  guibg=#e4e4e4 guifg=#080808 gui=underline
highlight AltBg_text_no_override  ctermbg=254                              guibg=#e4e4e4
highlight AltBg_text_none         ctermbg=254 ctermfg=232 cterm=none       guibg=#e4e4e4 guifg=#080808 gui=none
highlight AltBg_NoFg              ctermbg=254 ctermfg=254 cterm=none       guibg=#e4e4e4 guifg=#e4e4e4 gui=none

highlight GreenBg_text            ctermbg=148 ctermfg=232 guibg=#afd700 guifg=#080808
highlight RedBg_text              ctermbg=197 ctermfg=232 guibg=#ff005f guifg=#080808
highlight YellowBg_text           ctermbg=220 ctermfg=232 guibg=#ffd700 guifg=#080808
highlight BlueBg_text             ctermbg=39  ctermfg=232 guibg=#00afff guifg=#080808
highlight PurpleBg_text           ctermbg=141 ctermfg=232 guibg=#af87ff guifg=#080808
highlight AltPurpleBg_text        ctermbg=139 ctermfg=232 guibg=#af87af guifg=#080808

highlight RedFg_text              ctermbg=231 ctermfg=196 guibg=#ff005f guifg=#080808
highlight GreenFg_text            ctermbg=231 ctermfg=34  guibg=#afd700 guifg=#080808
highlight BlueFg_text             ctermbg=231 ctermfg=21  guibg=#ffffff guifg=#0000ff gui=underline

highlight BlueFg_text_underline   ctermbg=231 ctermfg=21 cterm=underline guibg=#ffffff guifg=#0000ff gui=underline

highlight Menu_select             ctermbg=70  ctermfg=231 cterm=bold guibg=#5faf00 guifg=#ffffff
highlight Menu_no_select          ctermbg=240 ctermfg=231            guibg=#585858 guifg=#ffffff
highlight Menu_scroll_bar         ctermbg=240 ctermfg=240            guibg=#585858 guifg=#585858
highlight Menu_scroll_bar_thumb   ctermbg=202 ctermfg=202            guibg=#585858 guifg=#ff5f00



" UI
highlight! link Normal           Default_text
highlight! link Folded           AltBg_text
highlight! link CursorLine       AltBg_text_no_override
highlight! link CursorColumn     AltBg_text_no_override
highlight! link ColorColumn      AltBg_text_no_override
highlight! link SignColumn       AltBg_text_no_override
highlight! link Visual           BlueBg_text
highlight! link VisualNOS        BlueBg_text
highlight! link VertSplit        AltBg_text_bold
highlight! link Pmenu            Menu_no_select
highlight! link PmenuSel         Menu_select
highlight! link PmenuSbar        Menu_scroll_bar
highlight! link PmenuThumb       Menu_scroll_bar_thumb
highlight! link WildMenu         Menu_select
highlight! link ModeMsg          AltFg_text
highlight! link StatusLine       AltBg_text_bold
highlight! link StatusLineNC     AltBg_text
highlight! link StatusLineTerm   AltBg_text_bold
highlight! link StatusLineTermNC AltBg_text
highlight! link Search           PurpleBg_text
highlight! link IncSearch        AltPurpleBg_text
highlight! link TabLineFill      AltBg_NoFg
highlight! link TabLineSel       Menu_select
highlight! link TabLine          AltBg_text_none
highlight! link EndOfBuffer      AltFg_text
highlight! link LineNr           AltBg_text
highlight! link CursorLineNr     AltBg_text
highlight! link MatchParen       YellowBg_text
highlight! link Conceal          Default_text
highlight! link Error            RedBg_text
highlight! link ErrorMsg         RedBg_text
highlight! link WarningMsg       YellowBg_text


" Diff
highlight! link DiffChange  YellowBg_text
highlight! link DiffAdd     GreenBg_text
highlight! link DiffDelete  RedBg_text
highlight! link diffAdded   GreenFg_text
highlight! link diffRemoved RedFg_text
highlight! link diffLine    BlueFg_text
" TODO
highlight DiffText          ctermbg=1  ctermfg=7 cterm=bold


" Spell
highlight! link SpellBad   RedBg_text
highlight! link SpellCap   YellowBg_text
highlight! link SpellLocal YellowBg_text
highlight! link SpellRare  YellowBg_text


" netrw
highlight! link Directory AltBg_text


" Syntax
highlight! link Todo                YellowBg_text
highlight! link htmlLink            BlueFg_text_underline
highlight! link Comment             AltFg_text_2
highlight! link markdownCodeBlock   Default_text
highlight! link Title               AltBg_text_bold
highlight! link PreProc             Default_text_bold
highlight! link Identifier          Default_text_bold
highlight! link Statement           Default_text_bold
highlight! link Special             Default_text_bold
highlight! link Type                Default_text_bold
highlight! link NonText             Default_text_bold
highlight! link Conditional         Default_text_bold
highlight! link Repeat              Default_text_bold
highlight! link Logical             Default_text_bold
highlight! link Compare             Default_text_bold
highlight! link Label               Default_text_underline
highlight! link Constant            Default_text
highlight! link Pointer             Default_text
highlight! link cErrInParen         Default_text
highlight! link Delimiter           Default_text
highlight! link vimHiGroup          Default_text
highlight! link mesonString         Default_text

highlight! link schemeSyntax      Default_text_bold
highlight! link schemeFunction    Default_text_bold
highlight! link schemeParentheses Default_text
highlight! link schemeNumber      Default_text
highlight! link schemeString      Default_text

highlight! link texComment        Comment
highlight! link texSection        Default_text_bold
highlight! link texParen          Default_text
highlight! link texCmdArgs        Default_text
highlight! link texBeginEnd       Default_text
highlight! link texBeginEndName   Default_text_bold

highlight! link markdownH1          Title
highlight! link markdownH1Delimiter Title
highlight! link markdownH2          Title
highlight! link markdownH2Delimiter Title
highlight! link markdownH3          Title
highlight! link markdownH3Delimiter Title
highlight! link markdownH4          Title
highlight! link markdownH4Delimiter Title
highlight! link markdownH5          Title
highlight! link markdownH5Delimiter Title
highlight! link markdownH6          Title
highlight! link markdownH6Delimiter Title
highlight! link markdownListMarker  Default_text_bold
highlight! link markdownError       Default_text
