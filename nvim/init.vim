source ~/.vim/vimrc

call plug#begin('~/.config/nvim/plugged')

" Code linting configuration
Plug 'w0rp/ale'

let g:ale_linters = {
\  'javascript': ['eslint'],
\}

let g:ale_fix_on_save        = 1
let g:ale_sign_error         = '✖'
let g:ale_sign_warning       = '!'

" Code auto-completion configuration
Plug 'Shougo/deoplete.nvim'

let g:deoplete#enable_at_startup = 1

" Misc
Plug 'scrooloose/nerdtree'

call plug#end()

