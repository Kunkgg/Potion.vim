" compiler
if !exists("g:potion_command")
    let g:potion_command = "potion"
endif

nnoremap <buffer> <localleader>r :call potion#running#PotionCompileAndRunFile()<CR>
nnoremap <buffer> <localleader>b :call potion#running#PotionShowBytecode()<CR>

" How to close a window by winnr:
" execute nr . "wincmd q"
" execute 'normal! :bdelete! ' . "__Potion_Bytecode__\r"
