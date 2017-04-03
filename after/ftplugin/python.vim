" Filetype: python
" Author: Duc H. Bui

"let b:did_ftplugin = 1 " disable vim's filetype plugin for Python completely
"setlocal shiftwidth=2

" do make
nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>

setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal autoindent
setlocal smarttab
setlocal formatoptions=croql
