
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
