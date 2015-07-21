execute pathogen#infect()
syntax on
filetype plugin indent on
syntax enable

set noerrorbells                " No beeps
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.

set noswapfile                  " Don't use swapfile
set nobackup                            " Don't create annoying backup files
set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set encoding=utf-8              " Set default encoding to UTF-8
set autowrite                   " Automatically save before :next, :make etc.
set autoread                    " Automatically reread changed files without asking me anything
set laststatus=2

set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats

set showmatch                   " Do not show matching brackets by flickering
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters

set switchbuf=usetab,newtab     " open new buffers always in new tabs

nnoremap <F3> :set invpaste paste?<CR> 
set pastetoggle=<F3>

let g:ctrlp_custom_ignore = '\.vagrant\|\.git\|node_modules\|DS_Store\|bower_components\|platforms'
let g:ctrlp_dotfiles = 1

map <Leader><Space> :let @/=""<CR>

nmap <F4> :set number! number?<CR>
set number                      " Show line numbers
set norelativenumber		" Show numbers relative to current line

set textwidth=0 wrapmargin=0

"let g:js_indent_log=1
nnoremap <Leader>m :w <BAR> !lessc % > %:p:r.css<CR><space>

let g:is_bash=1

map <F7> mzgg=G`z<CR>

function! ClearUndo()
	let choice = confirm("Clear undo information?", "&Yes\n&No", 2)
	if choice == 1
		let old_undolevels = &undolevels
		set undolevels=-1
		exe "normal a \<Bs>\<Esc>"
		let &undolevels = old_undolevels
		echo "done."
	endif
endfunction
map <Leader>dU :call ClearUndo()<CR>

set t_Co=256

" base16 color
set background=dark
let base16colorspace=256
colorscheme base16-default
" enable ctrlp
set runtimepath^=~/.vim/bundle/ctrlp
" helps activete vim-airline
set laststatus=2
" make insert mode pop instantly
set ttimeoutlen=50
" vim-indent-guides
let g:indent_guides_start_level=1
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=0
let g:indent_guides_guide_size=1
hi IndentGuidesOdd   ctermbg=black
hi IndentGuidesEven  ctermbg=black
let g:js_indent_log = 0
