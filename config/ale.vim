" Ale
let g:ale_virtualtext_cursor = 'disabled'
let g:ale_enabled = 1
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
" 始終開啟標誌列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
"自定義error和warning圖示
let g:ale_sign_error =      '❌'
let g:ale_sign_warning =    '🔰'
"在vim自帶的狀態列中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"顯示Linter名稱,出錯或警告等相關資訊
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"普通模式下，sp前往上一個錯誤或警告，sn前往下一個錯誤或警告
nmap an <Plug>(ale_previous_wrap)
nmap am <Plug>(ale_next_wrap)
"<Leader>ae觸發/關閉語法檢查
" nmap <Leader>ae :ALEToggle<CR>
"<Leader>d檢視錯誤或警告的詳細資訊
nmap <Leader>d :ALEDetail<CR>
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v]\ %{ALEGetStatusLine()}
"cpp NOT C++
let g:ale_linters = {
            \   'cpp': ['gcc'],
            \   'c': ['gcc'],
            \   'python': ['pylint'],
            \}
