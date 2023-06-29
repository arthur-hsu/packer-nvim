" git
set updatetime=300
set signcolumn=yes
let g:gitgutter_hightlight_lines =1
highlight! link SignColumn LineNr
let g:gitgutter_set_sign_backgrounds = 1
let g:gitgutter_signs=0
let g:gitgutter_highlight_linenrs=1

highlight GitGutterAddLineNr guifg=LightRed
highlight GitGutterChangeLineNr guifg=LightMagenta
highlight GitGutterDeleteLineNr guifg=LightRed
highlight GitGutterChangeDeleteLineNr guifg=LightRed
