" multi-line
"let g:VM_theme = ''
let g:VM_skip_empty_lines = 1
let g:VM_quit_after_leaving_insert_mode = 1
"let g:VM_Mono_hl   = 'DiffText'
"let g:VM_Extend_hl = 'DiffAdd'
"let g:VM_Cursor_hl = 'Visual'
"let g:VM_Insert_hl = 'DiffChange'

if exists(':VMTheme')
    " to avoid that current theme is reapplied on colorscheme change
    let g:VM_theme_set_by_colorscheme = 1

    " you can define both or just one, depending on the scheme
    if &background == 'light'
        hi VM_Extend ctermbg=24    ctermfg=237    guibg=#AAF0D6    guifg=NONE
        hi VM_Cursor ctermbg=31    ctermfg=237    guibg=#78dede    guifg=#262626
        hi VM_Insert ctermbg=239   ctermfg=237    guibg=#ffffaf    guifg=#262626
        hi VM_Mono   ctermbg=180   ctermfg=235    guibg=#B23A2D    guifg=#ffffff
    else
        hi VM_Extend ctermbg=24    ctermfg=237    guibg=#5f8787    guifg=#ffffff
        hi VM_Cursor ctermbg=31    ctermfg=237    guibg=#00af87    guifg=#ffffff
        hi VM_Insert ctermbg=239   ctermfg=237    guibg=#5f0087    guifg=#ffffff
        hi VM_Mono   ctermbg=180   ctermfg=235    guibg=#e05f51    guifg=#ffffff
    endif
endif
