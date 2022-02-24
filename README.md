# vim-ttt

## Introduction

vim-ttt provides a modeless Japanese input with TT-code.

## Install

Install using your favorite package manager, or use Vim's built-in package
support: 

``` shellsession
mkdir -p ~/.vim/pack/yoyuse/start
cd ~/.vim/pack/yoyuse/start
git clone https://github.com/yoyuse/vim-ttt.git
vim -u NONE -c "helptags vim-ttt/doc" -c q
```

## Configuration

This plug-in does NOT provide any default key mappings.
To enable ttt, you should set your own key mappings at .vimrc.

Mapping example:

``` vim-script
" use Alt+j
imap <M-j> <C-g>u<Plug>(ttt-do-ttt)
cmap <M-j> <Plug>(ttt-do-ttt-cmdline)
" use Option+j as Alt+j in MacVim
if has('gui_macvim')
  set macmeta
endif

" or use Command+j
imap <D-j> <C-g>u<Plug>(ttt-do-ttt)
cmap <D-j> <Plug>(ttt-do-ttt-cmdline)

" use Option+j in macOS terminal
" (for Terminal.app check 'メタキーとして Option キーを使用')
" (for iTerm2.app   check 'Left/Right Option key: Esc+')
if !has('gui_running') && !has('nvim')
  imap <Esc>j <C-g>u<Plug>(ttt-do-ttt)
  cmap <Esc>j <Plug>(ttt-do-ttt-cmdline)
  " or use Ctrl+j
  imap <C-j> <C-g>u<Plug>(ttt-do-ttt)
  cmap <C-j> <Plug>(ttt-do-ttt-cmdline)
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

Type TT-code in insert mode and hit `<M-j>`, which scans T-code string before
cursor on the current line and decodes it to Japanese text.

- Input:  `kryglp<M-j>`
- Output: `日本語`

Separate ASCII (English) string and T-code string by a space.

- Input:  `Vim mwus/xmf,d<M-j>`
- Output: `Vim プラグイン`

When spacing is not desired, use a colon `:` (`g:ttt_delimiter`).
The delimiter colon is removed after decode.

- Input:  `,g<M-j>vim-ttt:jv<M-j>`
- Output: `「vim-ttt」`

vim-ttt also provides TT-code enhancement for `f`, `F`, `t` and `T`
normal-mode commands. Hit `<CR>` after one of these commands, followd by T-code
string for a Japanese character, then cursor jumps to that character on the
current line.

## Mappings

| Mapping                      | Function                          |
|------------------------------|-----------------------------------|
| `<Plug>(ttt-do-ttt)`         | Do ttt conversion in insert mode  |
| `<Plug>(ttt-do-ttt-cmdline)` | Do ttt conversion in command line |
| `<Plug>(ttt-n-f)`            | TT-code enhancement for `f`       |
| `<Plug>(ttt-n-F)`            | TT-code enhancement for `F`       |
| `<Plug>(ttt-n-t)`            | TT-code enhancement for `t`       |
| `<Plug>(ttt-n-T)`            | TT-code enhancement for `T`       |

## Options

### `g:ttt_keys`

String of key characters in T-code key order.
Defaults to `'1234567890qwertyuiopasdfghjkl;zxcvbnm,./'` (QWERTY layout).
If you are using Dvorak keyboard, try this:

``` vim-script
let g:ttt_keys = "1234567890',.pyfgcrlaoeuidhtns;qjkxbmwvz"
```

### `g:ttt_delimiter`

String of character that delimits T-code string.
Defaults to `':'`.

## License

MIT
