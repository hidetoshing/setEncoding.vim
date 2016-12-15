
if exists("g:loaded_options_encode")
  finish
endif
let g:loaded_options_encode = 1

let s:save_cpo = &cpo
set cpo&vim


if $LANG == 'ja_JP.eucJP'
    set enc=euc-jp
    set fenc=euc-jp
else
    set enc=utf-8
    set fenc=utf-8
endif

set fencs=utf-8,euc-jp,sjis,cp932,iso-2022-jp
set fileformats=unix,dos,mac

" for double byte string
set ambiwidth=double


""" add Encode command
command! -nargs=1 Encode :e ++enc=<args>


let &cpo = s:save_cpo
unlet s:save_cpo
