set number
syntax on
let g:termdebug_wide=1
set mouse=a

let g:termdebug_config = {'sign': '>>'}

set clipboard=unnamedplus

set cindent 
set ic 
set incsearch 
set hlsearch 
set ts=4 
set sw=4 

function LoadCscope()
    let s:CscopeAddString = "cs add cscope.out"
    execute s:CscopeAddString 
endfunction
command LoadCS call LoadCscope()