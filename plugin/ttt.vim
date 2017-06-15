" vim:set ts=8 sts=2 sw=2 tw=0 foldmethod=marker foldmarker={{{,}}}:
" plugin/ttt.vim
"
" Maintainer: YUSE Yosihiro <yoyuse@gmail.com>
" Last Change: 2017-06-15

if exists("g:loaded_ttt")
  finish
endif
let g:loaded_ttt = 1

let s:save_cpo = &cpo
set cpo&vim

" --------------------------------------------------------------------

inoremap <expr> <Plug>(ttt-i-M-j) ttt#do_ttt()
"inoremap        <Plug>(ttt-i-C-c) <C-c>
inoremap        <Plug>(ttt-i-C-c) <C-c><Space><BS>
cnoremap        <Plug>(ttt-c-C-f-n-i) <C-f>i

noremap <expr> <Plug>(ttt-n-f) ttt#move_fFtT('f')
noremap <expr> <Plug>(ttt-n-F) ttt#move_fFtT('F')
noremap <expr> <Plug>(ttt-n-t) ttt#move_fFtT('t')
noremap <expr> <Plug>(ttt-n-T) ttt#move_fFtT('T')

" --------------------------------------------------------------------

let &cpo = s:save_cpo
unlet s:save_cpo
