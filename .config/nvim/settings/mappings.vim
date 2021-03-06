"Leader to Space
map <Space> <Leader>
map ; :

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if &filetype == 'vim'
          execute 'h '.expand('<cword>')
    else
          call CocAction('doHover')
    endif
endfunction

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

nmap <leader>rn <Plug>(coc-rename)
nmap <leader>ca  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <leader>ff :Format<CR>

nmap <silent> <C-w>v :vnew<CR>
nnoremap <silent> <C-w>V <C-w>v<CR>
nmap <silent> <C-w>s :new<CR>
nnoremap <silent> <C-w>S <C-w>s<CR>
nmap <C-w>tn :tabnew<CR>
nmap <C-w>tq :tabc<CR>

nmap <C-s>s :G<CR>
nmap <C-s>d :Gdiff<CR>

nmap <silent> <C-k> :term<CR>

nmap <silent> <C-p> :FZF<CR>

nmap <C-f> :Ag<Space>

let g:nnn#set_default_mappings = 0
nnoremap <silent> <C-o> :NnnPicker %:p:h<CR>

tnoremap <silent> <ESC> <C-\><C-n>
