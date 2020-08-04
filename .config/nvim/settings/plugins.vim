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

source ~/.config/nvim/settings/fzf.vim
source ~/.config/nvim/settings/coc.vim

"xkbswitch
let g:XkbSwitchEnabled = 1

"markdown-preview.nvim
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 0
let g:mkdp_browser = 'Brave Browser'
