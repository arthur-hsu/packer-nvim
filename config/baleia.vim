let s:baleia = luaeval("require('baleia').setup { }")
command! BaleiaColorize call s:baleia.once(bufnr('%'))

let s:baleia = luaeval("require('baleia').setup { }")
autocmd BufWinEnter my-buffer call s:baleia.automatically(bufnr('%'))

autocmd BufRead * BaleiaColorize
