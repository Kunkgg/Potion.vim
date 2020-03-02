" Basic folding, indent:
" setlocal foldmethod=indent
" setlocal foldignore=

" Advanced folding:
setlocal foldmethod=expr
setlocal foldexpr=GetPotionFold(v:lnum)

function! LineFoldLevel(lnum)
    return indent(a:lnum) / &shiftwidth
endfunction

function! NextNonBlankLine(lnum)
    let lastlinenum = line('$')
    let next = a:lnum + 1

    while (next <= lastlinenum)
        if getline(next) =~? '\v\S'
            return next
        endif
            let next += 1
    endwhile

    return -2
endfunction

function! GetPotionFold(lnum)
    if (getline(a:lnum) =~? '\v^\s*$')
        return '-1'
    endif

    let current_foldlevel = LineFoldLevel(a:lnum)
    let next_foldlevel = LineFoldLevel(NextNonBlankLine(a:lnum))

    if (current_foldlevel == next_foldlevel)
        return current_foldlevel
    elseif (current_foldlevel > next_foldlevel)
        return current_foldlevel
    else
        return '>' . next_foldlevel
    endif
endfunction
