" Vim syntax file
"
" Language:	Klog
" Maintainer:	Iain J. Reid <iainreid382@gmail.com>

if exists("b:current_syntax")
  finish
endif

" Syntax: Dates
"
" Two separate formats for the dates are officially supported, with either a
" dash or a forward slash used as a separator (the former being recommended).
syn match klogDate /\d\{4}\(-\d\{2}\)\{2}/
syn match klogDate /\d\{4}\(\/\d\{2}\)\{2}/

" Syntax: Totals
syn match klogTotal /(\(\d*\(h\|m\)\)\{1,2}!)/

" Syntax: Summaries

" Syntax: Tags
syn match klogTag  /#\(\w\|-\)*\(=\)\?/

hi Label gui=underline cterm=underline

hi def link klogDate  Label
hi def link klogTotal Statement
hi def link klogTag   Statement

