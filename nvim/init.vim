source ~/.vim/vimrc

" Auto-install 'vim-plug'
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

" General appearance
Plug 'vim-airline/vim-airline'

let g:airline#extensions#ale#enabled = 1

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

" Projections configuration
Plug 'tpope/vim-projectionist'

let g:projectionist_heuristics = {
\  'package.json': {
\    'src/main/*.js': {'alternate': 'src/test/{}.spec.js'},
\    'src/test/*.spec.js': {'alternate': 'src/main/{}.js'}
\  }
\}

" Misc
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'

call plug#end()

