" Install vim-plug if not found
" -------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
" -------------------
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" VIM-PLUG
" -------------------
call plug#begin()
	Plug 'xero/sourcerer.vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'ap/vim-css-color'
	Plug 'tpope/vim-surround'
	Plug 'itchyny/lightline.vim'
	Plug 'preservim/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'mhinz/vim-startify'
call plug#end()


" MAPPING
" -------------------
let mapleader = ","
noremap <leader><tab> :NERDTreeToggle<CR>

" LightLine
" --------------------
set laststatus=2

" NERDTree
" --------------------
let NERDTreeShowHidden=1


" CURSOR
" --------------------
"  Reference
"  Ps = 0  -> blinking block
"  Ps = 1  -> blinking block (default)
"  Ps = 2  -> steady block
"  Ps = 3  -> blinking underline
"  Ps = 4  -> steady underline
"  Ps = 5  -> blinking bar (xterm)
"  Ps = 6  -> steady bar (xterm)
"
let &t_SI = "\e[6 q"
let &t_EI = "\e[6 q"

" GUTTER
" -------------------
set number

" COLORSCHEME
" -------------------
colorscheme sourcerer
