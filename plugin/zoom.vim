" My First Vim Script

let s:fsize = 11
let s:current_font = &guifont

command! -narg=0 ZoomIn    :call s:ZoomIn()
command! -narg=0 ZoomOut   :call s:ZoomOut()
command! -narg=0 ZoomReset :call s:ZoomReset()

function! s:ZoomIn()
  let s:fsize += 1
  let &guifont = 'Monospace '.s:fsize
endfunction

function! s:ZoomOut()
  let s:fsize -= 1
  let &guifont = 'Monospace '.s:fsize
endfunction

function! s:ZoomReset()
  let &guifont = s:current_font
endfunction

finish
