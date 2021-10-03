" Use complete_info() if you need confirm completion only when there's selected complete item:
if exists("*complete_info")
  inoremap <silent><expr> <cr> complete_info(["selected"])["selected"] != -1 ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col(".") - 1
  return !col || getline(".")[col - 1]  =~ "\s"
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
" NOTE: using ctrl+p to up-navigate (s-tab do not work)


