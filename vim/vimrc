set nocompatible
set noshowmode
set laststatus=2

" Open split panes in a more natural way
set splitbelow
set splitright

" Simplify split pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

call plug#begin('~/.vim/plugged')

" After testing, lightline performs better on startup than the most actively
" developed alternative, vim-airline. It also has a more robust approach to
" configuration in that it relies less on third-party integrations, and more
" upon strict, upfront configuration provided buy the user.
Plug 'itchyny/lightline.vim'

let g:lightline = {
\   'active': {
\     'left': [
\       [ 'mode', 'paste' ],
\       [ 'gitbranch', 'readonly', 'filename', 'modified' ]
\     ]
\   },
\   'component_function': {
\     'gitbranch': 'fugitive#head'
\   }
\ }

" For quicker project navigation and asynchronous testing and building, I use
" both vim-dispatch and vim-projectionist.
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'

let g:projectionist_heuristics = {
\   'package.json': {
\     'src/main/*.js': {'alternate': 'src/test/{}.spec.js'},
\     'src/test/*.spec.js': {'alternate': 'src/main/{}.js'}
\   }
\ }

Plug 'tpope/vim-fugitive'
Plug 'thaerkh/vim-workspace'

call plug#end()

