" vim:set ts=8 sts=2 sw=2 tw=0 foldmethod=marker foldmarker={{{,}}}:
" plugin/ttt.vim
"
" Maintainer: YUSE Yosihiro <yoyuse@gmail.com>
" Last Change: 2021-03-01

if exists("g:loaded_ttt")
  finish
endif
let g:loaded_ttt = 1

let s:save_cpo = &cpo
set cpo&vim

" --------------------------------------------------------------------

inoremap <expr> <Plug>(ttt-do-ttt) ttt#do_ttt()
cnoremap <expr> <Plug>(ttt-do-ttt-cmdline) ttt#do_ttt_cmdline()

noremap <expr> <Plug>(ttt-n-f) ttt#move_fFtT('f')
noremap <expr> <Plug>(ttt-n-F) ttt#move_fFtT('F')
noremap <expr> <Plug>(ttt-n-t) ttt#move_fFtT('t')
noremap <expr> <Plug>(ttt-n-T) ttt#move_fFtT('T')

" --------------------------------------------------------------------

let &cpo = s:save_cpo
unlet s:save_cpo
