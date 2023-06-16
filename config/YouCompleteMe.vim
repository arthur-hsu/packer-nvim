
" YCM set

set completeopt=longest,menu
"默认配置文件路径"
let g:ycm_glvbal_ycm_extra_conf = '~/.ycm_extra_conf.py'
"打开vim时不再询问是否加载ycm_extra_conf.py配置"
let g:ycm_confirm_extra_conf=0
set completeopt=longest,menu
"是否开启语义补全"
let g:ycm_seed_identifiers_with_syntax=1
"是否在注释中也开启补全"
let g:ycm_complete_in_comments=1 "0 is enable"
let g:ycm_collect_identifiers_from_comments_and_strings = 1 "註釋和字串中的文字也會被收入補全
"开始补全的字符数"
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项,每次都重新生成匹配项"
let g:ycm_cache_omnifunc=0
"字符串中也开启补全"
let g:ycm_complete_in_strings = 1
"补全后自动关机预览窗口"
let g:ycm_autoclose_preview_window_after_completion= 1
"离开插入模式后自动关闭预览窗口"
let g:ycm_autoclose_preview_window_after_insertion = 1
" 補全列表長度
let g:ycm_max_num_candidates = 10
" map <leader>g :YcmCompleter GoTo <C-R>=expand("<cword>")<CR><CR>
" 设置转到定义处的快捷键为 [\] + d，这个功能非常赞
map <leader>doc :YcmCompleter GetDoc<CR>
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 回車即選中當前項
let g:ycm_key_list_stop_completion = ['<TAB>', '<ENTER>']
let g:ycm_key_list_select_completion = ['<c-n>' ,'<Down>']  " 對映按鍵,沒有這個會攔截掉tab, 導致其他外掛的tab不能用.
let g:ycm_key_list_previous_completion = ['<c-p>','<Up>']
let g:ycm_complete_in_comments = 1                          " 在註釋輸入中也能補全
let g:ycm_key_invoke_completion = '<c-z>'
let g:ycm_enable_semantic_highlighting=0
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }
let g:ycm_show_diagnostics_ui = 0                           " 禁用語法檢查
let g:ycm_enable_diagnostic_signs = 0
