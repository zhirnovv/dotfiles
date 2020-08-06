call plug#begin('~/.vim/plugged')

Plug 'mcchrish/nnn.vim'
" GOD AMONGST MEN
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Autoswitch languages
Plug 'lyokha/vim-xkbswitch'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Syntax MVP
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'ayu-theme/ayu-vim'
Plug 'wakatime/vim-wakatime'

call plug#end()

"xkbswitch
let g:XkbSwitchEnabled = 1

"markdown-preview.nvim
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 0
let g:mkdp_browser = 'Brave Browser'

" coc.nvim
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-eslint', 'coc-python', 'coc-clangd']
let g:coc_filetype_map = { 'ejs': 'ejs' }
command! -nargs=0 Format :call CocAction('format')

" nnn.vim
let g:nnn#action = {
      \ '<c-t>': 'tab split',
      \ '<c-s>': 'split',
      \ '<c-v>': 'vsplit' }
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }
let g:nnn#commad = "n"

" fzf.vim
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
let $FZF_DEFAULT_OPTS='--layout=reverse'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit',
  \}
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
autocmd! FileType fzf
autocmd  FileType fzf set noshowmode noruler nonu

