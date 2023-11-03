set shell=/usr/bin/bash
set exrc
set secure
set laststatus=2
set mouse-=a
set ruler
set noshowmode
set tags=./tags;,tags;
set autochdir
set background=light
set showmatch     " set show matching parenthesis
set hlsearch      " highlight search terms
set tabstop=4
set shiftwidth=4
set expandtab
set ff=unix
set runtimepath^=~/.vim/plugin/ctrlp.vim
syntax on
"highlight Comment term=bold ctermfg=Yellow guifg=#80a0ff gui=bold
"highlight String ctermfg=Yellow
nmap <F8> :TagbarToggle<CR>
map <F2> :tab split <CR>:exec("tag ".expand("<cword>"))<CR>
nmap <F3> :NERDTreeToggle<CR>
let g:tagbar_show_visibility = 0
colorscheme eclipse 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '*'
" cscope support http://vim.wikia.com/wiki/Cscope
if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

