
" Vim syntax file
" Language:	potion
" Maintainer:	kunkgg <goukun07@gmail.com>
" Last Change:	2020 Mar 02
" Remark:	VimScript toy.

if exists("b:current_syntax")
    finish
endif


syntax keyword potionbytecodeKeyword local getupval getlocal mult setupval return
syntax keyword potionbytecodeKeyword loadpn setlocal move loadk msg proto call
syntax keyword potionbytecodeKeyword value string print bind self upval

" syntax keyword potionbytecodeFunction print join string

syntax match potionbytecodeComment "\v^;.*$"
syntax match potionbytecodeComment "\v^-- .* --$"
syntax match potionbytecodeComment "\v^\*\* .*$"

" syntax match potionbytecodeOperator "\v\*"
" syntax match potionbytecodeOperator "\v/"
" syntax match potionbytecodeOperator "\v\+"
" syntax match potionbytecodeOperator "\v-"
" syntax match potionbytecodeOperator "\v\="
" syntax match potionbytecodeOperator "\v\?"
" syntax match potionbytecodeOperator "\v:"
" syntax match potionbytecodeOperator "\v\."
" syntax match potionbytecodeOperator "\v\*\="
" syntax match potionbytecodeOperator "\v/\="
" syntax match potionbytecodeOperator "\v\+\="
" syntax match potionbytecodeOperator "\v-\="

syntax match potionbytecodeNumber "\v\d+"
" syntax match potionbytecodeNumber "\v\d+\.\d+"
" syntax match potionbytecodeNumber "\v0x\x+"
" syntax match potionbytecodeNumber "\v\de[-\+]\d+"
" syntax match potionbytecodeNumber "\v\d\.\d+e[-\+]\d+"

syntax region potionbytecodeString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region potionbytecodeString start=/\v'/ skip=/\v\\./ end=/\v'/

highlight link potionbytecodeKeyword Keyword
" highlight link potionbytecodeFunction Function
highlight link potionbytecodeComment Comment
" highlight link potionbytecodeOperator Operator
highlight link potionbytecodeNumber Number
highlight link potionbytecodeString String

let b:current_syntax = "potionbytecode"
