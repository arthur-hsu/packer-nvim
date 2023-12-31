" GIT diff
command! Gdif GitGutterDiffOrig

" visual模式下缩进代码
nnoremap <silent><TAB> >>
vmap <silent><TAB> >gv
nnoremap <silent><S-TAB> <<
vmap <silent><S-TAB> <gv

" exit term
tnoremap <silent><Esc> <C-\><C-n>
" tab buffer change
nnoremap <silent>ty :BufferLineCycleNext<CR>
nnoremap <silent>tr :BufferLineCyclePrev<CR>
nnoremap <silent>td :bd!<CR>
tnoremap <silent>ty <C-\><C-n>:BufferLineCycleNext<CR>
tnoremap <silent>tr <C-\><C-n>:BufferLineCyclePrev<CR>
tnoremap <silent>td <C-\><C-n>:bd!<CR>

nnoremap <silent><leader>1 <cmd>BufferLineGoToBuffer 1<cr>
nnoremap <silent><leader>2 <cmd>BufferLineGoToBuffer 2<cr>
nnoremap <silent><leader>3 <cmd>BufferLineGoToBuffer 3<cr>
nnoremap <silent><leader>4 <cmd>BufferLineGoToBuffer 4<cr>
nnoremap <silent><leader>5 <cmd>BufferLineGoToBuffer 5<cr>
nnoremap <silent><leader>6 <cmd>BufferLineGoToBuffer 6<cr>
nnoremap <silent><leader>7 <cmd>BufferLineGoToBuffer 7<cr>
nnoremap <silent><leader>8 <cmd>BufferLineGoToBuffer 8<cr>
nnoremap <silent><leader>9 <cmd>BufferLineGoToBuffer 9<cr>
nnoremap <silent><leader>$ <cmd>BufferLineGoToBuffer -1<cr>

tnoremap <silent><leader>1 <C-\><C-n><cmd>BufferLineGoToBuffer 1<cr>
tnoremap <silent><leader>2 <C-\><C-n><cmd>BufferLineGoToBuffer 2<cr>
tnoremap <silent><leader>3 <C-\><C-n><cmd>BufferLineGoToBuffer 3<cr>
tnoremap <silent><leader>4 <C-\><C-n><cmd>BufferLineGoToBuffer 4<cr>
tnoremap <silent><leader>5 <C-\><C-n><cmd>BufferLineGoToBuffer 5<cr>
tnoremap <silent><leader>6 <C-\><C-n><cmd>BufferLineGoToBuffer 6<cr>
tnoremap <silent><leader>7 <C-\><C-n><cmd>BufferLineGoToBuffer 7<cr>
tnoremap <silent><leader>8 <C-\><C-n><cmd>BufferLineGoToBuffer 8<cr>
tnoremap <silent><leader>9 <C-\><C-n><cmd>BufferLineGoToBuffer 9<cr>
tnoremap <silent><leader>$ <C-\><C-n><cmd>BufferLineGoToBuffer -1<cr>



















nnoremap <silent><backspace> x
vmap <silent><backspace> x

imap <silent><C-z> <esc><C-o>
nmap <silent><C-z> <C-o>

nmap <silent><C-s> <esc>:w!<CR>
imap <silent><C-s> <esc>:w!<CR>
nmap <silent><F2> : set nu! <CR>:set rnu!<CR>
nmap <silent><F3> :GitGutterLineHighlightsToggle<CR>
nnoremap <silent><F4> :NvimTreeToggle<CR>
map <silent><F5> :RunCode<CR>


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

