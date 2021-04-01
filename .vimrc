set backspace=indent,eol,start
syntax on
set hlsearch  " highlight while searching
set autoindent
set visualbell t_vb=  " Disable vim sound
set smartindent
" set mouse=a  " Enable mouse in vim
set nomagic  " To perform a non-regex search/replace in vim
set expandtab  " In insert mode replace tabs to spaces
set incsearch  " Start searching before pressing enter
set tabstop=4  " Tab width in spaces
set shiftwidth=4  " Tab width in spaces when << or >>
set smarttab  " Remove tabs by backspace at the begning of the line (instead of multiple space removing)

" all folds open when opening a file
set foldmethod=indent
set foldlevelstart=20

" PEP8 column
set colorcolumn=80
highlight ColorColumn ctermbg=238 guibg=lightgrey
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

xnoremap p pgvy
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" search and highlight but do not jump
nnoremap <silent> * :let @/= '\<' . expand('<cword>') . '\>' <bar> set hls <cr>

" toggle NERDTree
nmap <silent> <leader><leader> :NERDTreeToggle<CR>

" vim plug
call plug#begin()
Plug 'nvie/vim-flake8'
Plug 'tmhedberg/simpylfold'
Plug 'scrooloose/nerdtree'
" Disables search highlighting when you are done searching
Plug 'romainl/vim-cool'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
call plug#end()

" Tab switcher
" map  <C-l> :tabn<CR>
" map  <C-h> :tabp<CR>
" map  <C-n> :tabnew<CR>

" to get rid of the bad habit consisting in using the arrow keys to move
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

if &diff                                                                        
    hi DiffText cterm=none ctermfg=Black ctermbg=Red gui=none guifg=Black guibg=Red
    hi DiffChange cterm=none ctermfg=Black ctermbg=LightMagenta gui=none guifg=Black guibg=LightMagenta
    hi DiffDelete ctermbg=4 ctermfg=Black                                       
    hi DiffAdd cterm=none ctermfg=Black ctermbg=6 gui=none guifg=Black guibg=LightBlue
endif
