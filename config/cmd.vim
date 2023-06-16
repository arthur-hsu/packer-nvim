
"移除搜尋結果
command! H let @/=""
nnoremap <F8> :let @/ = ""<CR> :GitGutterLineHighlightsToggle<CR>
"yank current file's name
nnoremap <leader>e :let @*=expand('%:t')

"=====F9標記高亮所有搜尋結果=====
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
map <f9> :call ToggleHighlight(1)<CR> :IndentGuidesToggle<CR> 

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
map <F10> :call ToggleCursorMoved(1)<CR>



vmap <C-c> y:Oscyank<cr>
"autocmd BufNewFile,BufRead *.json set ft=javascript  


imap <C-b> <esc><C-o>
nmap <C-b> <C-o>

nmap <C-s> <esc>:w!<CR>
imap <C-s> <esc>:w!<CR>
nmap <F2> : set nu! <CR>:set rnu!<CR>
nmap <F3> :ALEToggle<CR>
nnoremap <F4> :exec 'NERDTreeToggle' <CR>
map <F5> :call CompileRun()<CR>
map <F7> : UndotreeToggle<CR>


" 複製貼上到剪貼簿
vnoremap <Leader>y "+y
nmap <Leader>p "+p
" 設定分屏
nmap spl :set splitright<CR>:vsplit<CR>
nmap spk :set splitbelow<CR>:split<CR>
map <A-Right> :vertical resize-5 <CR> 
map <A-Left> :vertical resize+5 <CR> 
map <A-Up> :resize-5 <CR> 
map <A-Down> :resize+5 <CR> 


func! CompileRun()
    exec "w"
    if &filetype == 'cpp'
        exec '!g++ -std=c++11 % -o /tmp/a.out && /tmp/a.out<'
        exec "!time ./%<"
    elseif &filetype == 'javascript'
        exec '!node %'
    elseif &filetype == 'java'
        exec '!javac %'
        exec '!java %<'
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        if g:iswindows == 1 
            exec '!python %'
        else
            exec '!python3 %'
        endif
    endif
endfunc
