" vi:syntax=vim

function! <sid>hi(group, colorfg, colorbg, attr, guisp)
  if a:colorfg != ""
    exec "hi " . a:group . " " . s:env . "fg=" . a:colorfg
  endif
  if a:colorbg != ""
    exec "hi " . a:group . " " . s:env . "bg=" . a:colorbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " " . s:env . "=" . a:attr
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=" . a:guisp
  endif
endfunction

" Color definitions
if has("gui_running")
  let s:env = "gui"

  let s:color00 = "#002635"
  let s:color01 = "#00384d"
  let s:color02 = "#517F8D"
  let s:color03 = "#6C8B91"
  let s:color04 = "#869696"
  let s:color05 = "#a1a19a"
  let s:color06 = "#e6e6dc"
  let s:color07 = "#fafaf8"
  let s:color08 = "#ff5a67"
  let s:color09 = "#f08e48"
  let s:color0A = "#ffcc1b"
  let s:color0B = "#7fc06e"
  let s:color0C = "#14747e"
  let s:color0D = "#5dd7b9"
  let s:color0E = "#9a70a4"
  let s:color0F = "#c43060"
else
  let s:env = "cterm"

  let s:color00 = "00"
  let s:color01 = "10"
  let s:color02 = "11"
  let s:color03 = "08"
  let s:color04 = "12"
  let s:color05 = "07"
  let s:color06 = "13"
  let s:color07 = "15"
  let s:color08 = "01"
  let s:color09 = "09"
  let s:color0A = "03"
  let s:color0B = "02"
  let s:color0C = "06"
  let s:color0D = "04"
  let s:color0E = "05"
  let s:color0F = "14"
endif

" Theme setup
hi clear
syntax reset
let g:colors_name = "dynamic"

" Vim editor colors
call <sid>hi("Normal",                      s:color05,  s:color00,  "none",       "")
call <sid>hi("Bold",                        "",         "",         "bold",       "")
call <sid>hi("Debug",                       s:color08,  "",         "none",       "")
call <sid>hi("Directory",                   s:color0D,  "",         "none",       "")
call <sid>hi("Error",                       s:color00,  s:color08,  "none",       "")
call <sid>hi("ErrorMsg",                    s:color08,  s:color00,  "none",       "")
call <sid>hi("Exception",                   s:color08,  "",         "none",       "")
call <sid>hi("FoldColumn",                  s:color0C,  s:color01,  "none",       "")
call <sid>hi("Folded",                      s:color03,  s:color01,  "none",       "")
call <sid>hi("IncSearch",                   s:color01,  s:color09,  "none",       "")
call <sid>hi("Italic",                      "",         "",         "none",       "")
call <sid>hi("Macro",                       s:color08,  "",         "none",       "")
call <sid>hi("MatchParen",                  "",         s:color03,  "none",       "")
call <sid>hi("ModeMsg",                     s:color0B,  "",         "none",       "")
call <sid>hi("MoreMsg",                     s:color0B,  "",         "none",       "")
call <sid>hi("Question",                    s:color0D,  "",         "none",       "")
call <sid>hi("Search",                      s:color01,  s:color0A,  "none",       "")
call <sid>hi("Substitute",                  s:color01,  s:color0A,  "none",       "")
call <sid>hi("SpecialKey",                  s:color03,  "",         "none",       "")
call <sid>hi("TooLong",                     s:color08,  "",         "none",       "")
call <sid>hi("Underlined",                  s:color08,  "",         "underline",  "")
call <sid>hi("Visual",                      "",         s:color02,  "none",       "")
call <sid>hi("VisualNOS",                   s:color08,  "",         "none",       "")
call <sid>hi("WarningMsg",                  s:color08,  "",         "none",       "")
call <sid>hi("WildMenu",                    s:color08,  s:color0A,  "none",       "")
call <sid>hi("Title",                       s:color0D,  "",         "none",       "")
call <sid>hi("Conceal",                     s:color0D,  s:color00,  "none",       "")
call <sid>hi("Cursor",                      s:color00,  s:color05,  "none",       "")
call <sid>hi("NonText",                     s:color03,  "",         "none",       "")
call <sid>hi("LineNr",                      s:color03,  s:color00,  "none",       "")
call <sid>hi("SignColumn",                  s:color03,  s:color01,  "none",       "")
call <sid>hi("StatusLine",                  s:color04,  s:color02,  "none",       "")
call <sid>hi("StatusLineNC",                s:color03,  s:color01,  "none",       "")
call <sid>hi("VertSplit",                   s:color02,  s:color02,  "none",       "")
call <sid>hi("ColorColumn",                 "",         s:color01,  "none",       "")
call <sid>hi("CursorColumn",                "",         s:color01,  "none",       "")
call <sid>hi("CursorLine",                  "",         s:color01,  "none",       "")
call <sid>hi("CursorLineNr",                s:color04,  s:color01,  "none",       "")
call <sid>hi("QuickFixLine",                "",         s:color01,  "none",       "")
call <sid>hi("PMenu",                       s:color05,  s:color01,  "none",       "")
call <sid>hi("PMenuSel",                    s:color01,  s:color05,  "none",       "")
call <sid>hi("TabLine",                     s:color03,  s:color01,  "none",       "")
call <sid>hi("TabLineFill",                 s:color03,  s:color01,  "none",       "")
call <sid>hi("TabLineSel",                  s:color0B,  s:color01,  "none",       "")

" Standard syntax <sid>hiing
call <sid>hi("Boolean",                     s:color09,  "",         "none",       "")
call <sid>hi("Character",                   s:color08,  "",         "none",       "")
call <sid>hi("Comment",                     s:color03,  "",         "italic",     "")
call <sid>hi("Conditional",                 s:color0E,  "",         "none",       "")
call <sid>hi("Constant",                    s:color09,  "",         "none",       "")
call <sid>hi("Define",                      s:color0E,  "",         "none",       "")
call <sid>hi("Delimiter",                   s:color0F,  "",         "none",       "")
call <sid>hi("Float",                       s:color09,  "",         "none",       "")
call <sid>hi("Function",                    s:color0D,  "",         "none",       "")
call <sid>hi("Identifier",                  s:color08,  "",         "none",       "")
call <sid>hi("Include",                     s:color0D,  "",         "none",       "")
call <sid>hi("Keyword",                     s:color0E,  "",         "none",       "")
call <sid>hi("Label",                       s:color0A,  "",         "none",       "")
call <sid>hi("Number",                      s:color09,  "",         "none",       "")
call <sid>hi("Operator",                    s:color05,  "",         "none",       "")
call <sid>hi("PreProc",                     s:color0A,  "",         "none",       "")
call <sid>hi("Repeat",                      s:color0A,  "",         "none",       "")
call <sid>hi("Special",                     s:color0C,  "",         "none",       "")
call <sid>hi("SpecialChar",                 s:color0F,  "",         "none",       "")
call <sid>hi("Statement",                   s:color08,  "",         "none",       "")
call <sid>hi("StorageClass",                s:color0A,  "",         "none",       "")
call <sid>hi("String",                      s:color0B,  "",         "none",       "")
call <sid>hi("Structure",                   s:color0E,  "",         "none",       "")
call <sid>hi("Tag",                         s:color0A,  "",         "none",       "")
call <sid>hi("Todo",                        s:color0A,  s:color01,  "none",       "")
call <sid>hi("Type",                        s:color0A,  "",         "none",       "")
call <sid>hi("Typedef",                     s:color0A,  "",         "none",       "")

" Syntax <sid>hiing
call <sid>hi("javaScript",                  s:color05,  "",         "none",       "")
call <sid>hi("javaScriptBraces",            s:color05,  "",         "none",       "")
call <sid>hi("javaScriptNumber",            s:color09,  "",         "none",       "")

" CSS <sid>hiing
call <sid>hi("cssBraces",                   s:color05,  "",         "none",       "")
call <sid>hi("cssClassName",                s:color0E,  "",         "none",       "")
call <sid>hi("cssColor",                    s:color0C,  "",         "none",       "")

" Diff <sid>hiing
call <sid>hi("DiffAdd",                     s:color0B,  s:color01,  "none",       "")
call <sid>hi("DiffChange",                  s:color03,  s:color01,  "none",       "")
call <sid>hi("DiffDelete",                  s:color08,  s:color01,  "none",       "")
call <sid>hi("DiffText",                    s:color0D,  s:color01,  "none",       "")
call <sid>hi("DiffAdded",                   s:color0B,  s:color00,  "none",       "")
call <sid>hi("DiffFile",                    s:color08,  s:color00,  "none",       "")
call <sid>hi("DiffNewFile",                 s:color0B,  s:color00,  "none",       "")
call <sid>hi("DiffLine",                    s:color0D,  s:color00,  "none",       "")
call <sid>hi("DiffRemoved",                 s:color08,  s:color00,  "none",       "")

" Git <sid>hiing
call <sid>hi("gitcommitOverflow",           s:color08,  "",         "none",       "")
call <sid>hi("gitcommitSummary",            s:color0B,  "",         "none",       "")
call <sid>hi("gitcommitComment",            s:color03,  "",         "none",       "")
call <sid>hi("gitcommitUntracked",          s:color03,  "",         "none",       "")
call <sid>hi("gitcommitDiscarded",          s:color03,  "",         "none",       "")
call <sid>hi("gitcommitSelected",           s:color03,  "",         "none",       "")
call <sid>hi("gitcommitHeader",             s:color0E,  "",         "none",       "")
call <sid>hi("gitcommitSelectedType",       s:color0D,  "",         "none",       "")
call <sid>hi("gitcommitUnmergedType",       s:color0D,  "",         "none",       "")
call <sid>hi("gitcommitDiscardedType",      s:color0D,  "",         "none",       "")
call <sid>hi("gitcommitBranch",             s:color09,  "",         "bold",       "")
call <sid>hi("gitcommitUntrackedFile",      s:color0A,  "",         "none",       "")
call <sid>hi("gitcommitUnmergedFile",       s:color08,  "",         "bold",       "")
call <sid>hi("gitcommitDiscardedFile",      s:color08,  "",         "bold",       "")
call <sid>hi("gitcommitSelectedFile",       s:color0B,  "",         "bold",       "")

" GitGutter <sid>hiing
call <sid>hi("GitGutterAdd",                s:color0B,  s:color01,  "none",       "")
call <sid>hi("GitGutterChange",             s:color0D,  s:color01,  "none",       "")
call <sid>hi("GitGutterDelete",             s:color08,  s:color01,  "none",       "")
call <sid>hi("GitGutterChangeDelete",       s:color0E,  s:color01,  "none",       "")

" HTML <sid>hiing
call <sid>hi("htmlBold",                    s:color0A,  "",         "none",       "")
call <sid>hi("htmlItalic",                  s:color0E,  "",         "none",       "")
call <sid>hi("htmlEndTag",                  s:color05,  "",         "none",       "")
call <sid>hi("htmlTag",                     s:color05,  "",         "none",       "")

" Markdown <sid>hiing
call <sid>hi("markdownCode",                s:color0B,  "",         "none",       "")
call <sid>hi("markdownError",               s:color05,  s:color00,  "none",       "")
call <sid>hi("markdownCodeBlock",           s:color0B,  "",         "none",       "")
call <sid>hi("markdownHeadingDelimiter",    s:color0D,  "",         "none",       "")

" Python <sid>hiing
call <sid>hi("pythonOperator",              s:color0E,  "",         "none",       "")
call <sid>hi("pythonRepeat",                s:color0E,  "",         "none",       "")
call <sid>hi("pythonInclude",               s:color0E,  "",         "none",       "")
call <sid>hi("pythonStatement",             s:color0E,  "",         "none",       "")

" Ruby <sid>hiing
call <sid>hi("rubyAttribute",               s:color0D,  "",         "none",       "")
call <sid>hi("rubyConstant",                s:color0A,  "",         "none",       "")
call <sid>hi("rubyInterpolationDelimiter",  s:color0F,  "",         "none",       "")
call <sid>hi("rubyRegexp",                  s:color0C,  "",         "none",       "")
call <sid>hi("rubySymbol",                  s:color0B,  "",         "none",       "")
call <sid>hi("rubyStringDelimiter",         s:color0B,  "",         "none",       "")

" SASS <sid>hiing
call <sid>hi("sassidChar",                  s:color08,  "",         "none",       "")
call <sid>hi("sassClassChar",               s:color09,  "",         "none",       "")
call <sid>hi("sassInclude",                 s:color0E,  "",         "none",       "")
call <sid>hi("sassMixing",                  s:color0E,  "",         "none",       "")
call <sid>hi("sassMixinName",               s:color0D,  "",         "none",       "")

" Signify <sid>hiing
call <sid>hi("SignifySignAdd",              s:color0B,  s:color01,  "none",       "")
call <sid>hi("SignifySignChange",           s:color0D,  s:color01,  "none",       "")
call <sid>hi("SignifySignDelete",           s:color08,  s:color01,  "none",       "")

" Spelling <sid>hiing
call <sid>hi("SpellBad",                    "",         "",         "undercurl",  s:color08)
call <sid>hi("SpellLocal",                  "",         "",         "undercurl",  s:color0C)
call <sid>hi("SpellCap",                    "",         "",         "undercurl",  s:color0D)
call <sid>hi("SpellRare",                   "",         "",         "undercurl",  s:color0E)

" Startify <sid>hiing
call <sid>hi("StartifyBracket",             s:color03,  "",         "none",       "")
call <sid>hi("StartifyFile",                s:color07,  "",         "none",       "")
call <sid>hi("StartifyFooter",              s:color03,  "",         "none",       "")
call <sid>hi("StartifyHeader",              s:color0B,  "",         "none",       "")
call <sid>hi("StartifyNumber",              s:color09,  "",         "none",       "")
call <sid>hi("StartifyPath",                s:color03,  "",         "none",       "")
call <sid>hi("StartifySection",             s:color0E,  "",         "none",       "")
call <sid>hi("StartifySelect",              s:color0C,  "",         "none",       "")
call <sid>hi("StartifySlash",               s:color03,  "",         "none",       "")
call <sid>hi("StartifySpecial",             s:color03,  "",         "none",       "")

" Remove functions
delfunction <sid>hi

" Remove color variables
unlet s:color00 s:color01 s:color02 s:color03 s:color04 s:color05 s:color06 s:color07 s:color08 s:color09 s:color0A s:color0B s:color0C s:color0D s:color0E s:color0F
