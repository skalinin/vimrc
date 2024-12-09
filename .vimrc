set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

syntax enable

filetype plugin indent on

set nomagic

set colorcolumn=120
highlight ColorColumn ctermbg=1

xnoremap p pgvy

set hlsearch

set incsearch

set wildmenu

set cindent

if &term =~ "screen"
    let &t_BE = "\e[?2004h"
    let &t_BD = "\e[?2004l"
    exec "set t_PS=\e[200~"
    exec "set t_PE=\e[201~"
endif

set ruler

nnoremap <silent> * :let @/= '\<' . expand('<cword>') . '\>' <bar> set hls <cr>

if &diff
    hi DiffText cterm=none ctermfg=Black ctermbg=Red gui=none guifg=Black guibg=Red
    hi DiffChange cterm=none ctermfg=Black ctermbg=LightMagenta gui=none guifg=Black guibg=LightMagenta
    hi DiffDelete ctermbg=4 ctermfg=Black
    hi DiffAdd cterm=none ctermfg=Black ctermbg=6 gui=none guifg=Black guibg=LightBlue
endif

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
