" ____    ____  __   _______   _______
" \   \  /   / |  | |       \ |   ____|
"  \   \/   /  |  | |  '--'  ||  |__
"   \      /   |  | |  |  |  ||   __|
"    \    /    |  | |  '--'  ||  |____
"     \__/     |__| |_______/ |_______|
"

colorscheme onedark

set number

""" filetype setting
filetype off
filetype plugin indent on

""" coding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8

" io setting
set autoread           " extern write protection
set nobackup           " delete backup file once writting
set noswapfile         " do not generate temp file
set clipboard+=unnamed " share the clipboard
set pastetoggle=<F4>   " switch the paste and nopaste mode

" indent setting
set smartindent
set cindent
set autoindent
set smarttab
set shiftwidth=4 " first line
set tabstop=4    " other lines
set expandtab
set nowrap       " do not fold the code default

" interface setting
syntax on
set showcmd           " Show cmd in vim-cmdline.
set number            " show line number
set backspace=2       " define the range of backsapce
set ignorecase        " ignoring case in a pattern 
set smartcase         " help for re search
set complete-=i       " complete content not found from include file 
set visualbell t_vb=  " close the bell and do not shining
set noautochdir       " do not change work dir according to current file
set foldmethod=manual " fold block manually
set showmatch         " do not showmatch
set wrapscan          " search wrap around the end of the file 
set scrolloff=6       " set the minimum offset between top/bottom and current line
set textwidth=0       " maximum width of text that is being inserted

" highlight
set cursorline        " highlight current line
nnoremap <F3> :set hlsearch!<CR> 

" buffer setting
set hidden " hide the buffer files
nmap <C-J> :bnext<CR>
nmap <C-K> :bprev<CR>
nmap <C-D> :bdelete<CR>


"===================================================================
"===                PLUGINS CONFIGURATIONS                       ===
"===================================================================
lua require("plugins")

