set pastetoggle=<F3>

set tabstop=4  
set shiftwidth=4  
set smarttab  
set expandtab  
set smartindent

set colorcolumn=80
highlight ColorColumn ctermbg=1

xnoremap p pgvy

set hlsearch

set incsearch

set wildmenu

if &term =~ "screen"                                                   
    let &t_BE = "\e[?2004h"                                              
    let &t_BD = "\e[?2004l"                                              
    exec "set t_PS=\e[200~"                                              
    exec "set t_PE=\e[201~"                                              
endif

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
