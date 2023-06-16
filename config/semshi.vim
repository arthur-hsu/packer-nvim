let g:semshi#mark_selected_nodes=0
let g:semshi#excluded_hl_groups = ''
hi semshiLocal           ctermfg=209 guifg=#b6fcd5
hi semshiGlobal          ctermfg=214 guifg=#3399ff
hi semshiImported        ctermfg=214 guifg=#4EC9B0 cterm=bold gui=bold
hi semshiParameter       ctermfg=75  guifg=#bedbb1
hi semshiParameterUnused ctermfg=117 guifg=#fcb2aa cterm=underline gui=underline
hi semshiFree            ctermfg=218 guifg=#ffafd7
hi semshiBuiltin         ctermfg=207 guifg=#ecbe7b
hi semshiAttribute       ctermfg=49  guifg=#00ffaf
hi semshiSelf            ctermfg=249 guifg=#ff80ed
hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f

hi semshiErrorSign       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
hi semshiErrorChar       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
sign define semshiError text=E> texthl=semshiErrorSign
