
" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

call plug#begin('~/.config/nvim/plugged')
Plug 'git@github.com:nvim-treesitter/nvim-treesitter.git', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

""" statusline
Plug 'git@github.com:kyazdani42/nvim-web-devicons.git'
Plug 'git@github.com:hoob3rt/lualine.nvim.git'
Plug 'git@github.com:akinsho/bufferline.nvim.git'
Plug 'git@github.com:navarasu/onedark.nvim.git'

call plug#end()

"
" theme
"
colorscheme onedark

"
" statusline
"
lua require('plugins/statusline')



