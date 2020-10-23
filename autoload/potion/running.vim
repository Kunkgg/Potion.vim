echom "Autoloading..."

function! potion#running#PotionCompileAndRunFile()
    normal! :write<CR>
    silent !clear

    execute "!" . g:potion_command . " " . bufname("%")
endfunction

function! potion#running#PotionShowBytecode()
    normal! :write<CR>
    " Get the bytecode
    let bytecode = system(g:potion_command . " -c -V " . bufname("%"))

    if bytecode =~? '\v^\*\* .*error.*'
        echo "Get bytecode Error:\n" . bytecode
    else
        let nr = bufwinnr("__Potion_Bytecode__")
        if nr == -1
            " Open split window
            vsplit __Potion_Bytecode__
            normal! ggdG

            setlocal filetype=potionbytecode
            setlocal buftype=nofile

            " insert bytecode
            call append(0, split(bytecode, '\v\n'))

            execute "wincmd w"
        else
            execute nr . "wincmd q"
        endif
    endif
endfunction
