set backspace=eol,start
syntax on
set hlsearch                                                                    
set expandtab                                                                   
set tabstop=4                                                                   
set shiftwidth=4

" PEP8 column
set colorcolumn=80
highlight ColorColumn ctermbg=238 guibg=lightgrey
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set nomagic
xnoremap p pgvy
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
nnoremap <silent> * :let @/= '\<' . expand('<cword>') . '\>' <bar> set hls <cr>
set backspace=indent,eol,start " to allow remove auto indent
" filetype plugin on

nmap <silent> <leader><leader> :NERDTreeToggle<CR>

" to toggle between bash and vim quickly
noremap <C-d> :sh<cr>

" To not to copy when delete
noremap  y "*y
noremap  Y "*Y
noremap  p "*p
noremap  P "*P
vnoremap y "*y
vnoremap Y "*Y
vnoremap p "*p
vnoremap P "*P

" vim plug
call plug#begin()
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
call plug#end()

" Enable mouse in vim
set mouse=a

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
