" GIT diff
command! Gdif GitGutterDiffOrig

" visual模式下缩进代码
vmap <silent>< <gv
vmap <silent>> >gv
nnoremap <silent>]t :BufferLineCycleNext<CR>
nnoremap <silent>[t :BufferLineCyclePrev<CR>



"vmap <silent><C-c> y:Oscyank<CR>
imap <silent><C-b> <esc><C-o><C-o>
nmap <silent><C-b> <C-o><C-o>

nmap <silent><C-s> <esc>:w!<CR>
imap <silent><C-s> <esc>:w!<CR>
nmap <silent><F2> : set nu! <CR>:set rnu!<CR>
nmap <silent><F3> :GitGutterLineHighlightsToggle<CR>
nnoremap <silent><F4> :NvimTreeToggle<CR>
map <silent><F5> :RunCode<CR>
map <silent><F7> : UndotreeToggle<CR>


" 設定分屏
nmap <silent>spl :set splitright<CR>:vsplit<CR>
nmap <silent>spk :set splitbelow<CR>:split<CR>
map <silent><A-Right> :vertical resize-5 <CR> 
map <silent><A-Left> :vertical resize+5 <CR> 
map <silent><A-Up> :resize-5 <CR> 
map <silent><A-Down> :resize+5 <CR> 

nnoremap <silent><F8> :let @/ = ""<CR>
" yank current file's name
nmap <leader>e :let @*=expand('%')<CR>
" =====F9標記高亮所有搜尋結果=====
let g:toggleHighlight = 1
function! ToggleHighlight(...)
    if a:0 == 1 "toggle behaviour
        let g:toggleHighlight = 1 - g:toggleHighlight
    endif
    if g:toggleHighlight == 0 "normal action, do the hi
        silent! exe printf('match IncSearch /\V\<%s\>/', escape(expand("<cword>"), "/\'"))
    else
        call  clearmatches()
    endif
endfunction

"高亮最後搜尋的文字
map <silent><f9> :call ToggleHighlight(1)<CR>

"遊標F10自動高亮
let g:toggleCursorMoved = 1
function! ToggleCursorMoved(...)
    if a:0 == 1 "toggle behaviour
        let g:toggleCursorMoved = 1 - g:toggleCursorMoved
        au! CursorMoved
    endif
    if g:toggleCursorMoved == 0 "normal action, do the hi
        autocmd CursorMoved * silent! exe printf('match Search /\<%s\>/', expand('<cword>'))
    else
        call  clearmatches()
    endif
endfunction

" nmap <f10> :autocmd CursorMoved * silent! exe printf('match Search /\<%s\>/', expand('<cword>'))<cr>
map <silent><F10> :call ToggleCursorMoved(1)<CR>

