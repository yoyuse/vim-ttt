# vim-ttt

vim-ttt is Tiny TT-Code Translation program for Vim,
a Vim port of [ttt.el](https://github.com/yoyuse/ttt).

## Requirements

* gVim 8.0 or higher.

## Installation

Put vim-ttt directory into somewhere
and add something like following to .vimrc:

```vim
set runtimepath+=path/to/vim-ttt

if has('gui_macvim')
  " use Command+j
  imap <silent> <D-j>       <C-R>=ttt#do_ttt()<CR>
  cnoremap      <D-j> <C-F>i<C-R>=ttt#do_ttt()<CR><C-C><Space><BS>
  " or use Option+j
  set macmeta
  imap <silent> <M-j>       <C-R>=ttt#do_ttt()<CR>
  cnoremap      <M-j> <C-F>i<C-R>=ttt#do_ttt()<CR><C-C><Space><BS>
elseif has('win32') || has('win64')
      \ || has('unix') && has('x11') && has('gui_running') " for Ubuntu
  " use Alt+j
  imap <silent> <M-j>       <C-R>=ttt#do_ttt()<CR>
  cnoremap      <M-j> <C-F>i<C-R>=ttt#do_ttt()<CR><C-C><Space><BS>
else
  " use Option+j
  " (for Terminal.app check 'メタキーとして Option キーを使用')
  " (for iTerm2.app   check 'Option key acts as +Esc')
  imap <silent> <Esc>j       <C-R>=ttt#do_ttt()<CR>
  cnoremap      <Esc>j <C-F>i<C-R>=ttt#do_ttt()<CR><C-C><Space><BS>
endif

nmap f<CR> <Plug>(ttt-n-f)
xmap f<CR> <Plug>(ttt-n-f)
omap f<CR> <Plug>(ttt-n-f)

nmap F<CR> <Plug>(ttt-n-F)
xmap F<CR> <Plug>(ttt-n-F)
omap F<CR> <Plug>(ttt-n-F)

nmap t<CR> <Plug>(ttt-n-t)
xmap t<CR> <Plug>(ttt-n-t)
omap t<CR> <Plug>(ttt-n-t)

nmap T<CR> <Plug>(ttt-n-T)
xmap T<CR> <Plug>(ttt-n-T)
omap T<CR> <Plug>(ttt-n-T)
```

## Usage

Type TT-Code in insert mode and hit <kbd>M-j</kbd>,
which scans T-Code string before cursor on the current line
and decodes it to Japanse text.

vim-ttt also provides TT-Code enhancement
for <kbd>f</kbd>, <kbd>F</kbd>, <kbd>t</kbd> and <kbd>T</kbd>
normal-mode commands.
Hit <kbd>CR</kbd> after one of these commands,
followed by T-code string for a Japanese character,
then cursor jumps to that character on the current line.

## License

MIT
