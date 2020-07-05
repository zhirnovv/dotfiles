let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-eslint', 'coc-python', 'coc-clangd']
let g:coc_filetype_map = { 'ejs': 'ejs' }
command! -nargs=0 Format :call CocAction('format')

