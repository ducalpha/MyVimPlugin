" Filetype: c
" Author: Duc H. Bui

" create function prototype from first line of function definition
" gp: mark current location as 'a', generate prototype and put it in buffer,
" goto line 5
" work with function with the bracket on the same line with declaration void abc() { --> void abc();
noremap    <buffer>  <silent>  <LocalLeader>gp      mayyp$xi;<Esc>dd5gg

imap <F5> <ESC>:wa<CR>:make<CR>
nmap <F5> <ESC>:wa<CR>:make<CR>
vmap <F5> <ESC>:wa<CR>:make<CR>
map <F6> :make clean<CR>

"au BufWritePost *.c,*.cpp,*.h silent! !ctags -R --links=no &

nmap <F12> :!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > cscope.files<CR>
  \:!cscope -b -i cscope.files -f cscope.out<CR>
  \:cs reset<CR>

"au BufWritePost *.c,*.cpp,*.h silent! call duc:ResetCScope()
function! duc:ResetCScope()
  !find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > cscope.files
  !cscope -b -i cscope.files -f cscope.out
  cs reset
endfunction

" Open and close all the three plugins on the same time 
nmap <F9>  :TrinityToggleAll<CR> 

" Open and close the Source Explorer separately 
nmap <F10>  :TrinityToggleSourceExplorer<CR> 

" Open and close the Taglist separately 
"nmap <F11> :TrinityToggleTagList<CR> 

" Open and close the NERD Tree separately 
nmap <F11> :TrinityToggleNERDTree<CR> 
