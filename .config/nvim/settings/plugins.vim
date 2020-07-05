call plug#begin('~/.vim/plugged')

Plug 'mcchrish/nnn.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'lyokha/vim-xkbswitch'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'briancollins/vim-jst'
Plug 'itchyny/lightline.vim'
Plug 'https://gitlab.com/protesilaos/tempus-themes-vim.git'
Plug 'tomasr/molokai'
Plug 'junegunn/seoul256.vim'
Plug 'ryanoasis/vim-devicons'

call plug#end()

source ~/.config/nvim/settings/fzf.vim
source ~/.config/nvim/settings/coc.vim

"xkbswitch
let g:XkbSwitchEnabled = 1

"markdown-preview.nvim
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 0
let g:mkdp_browser = 'Brave Browser'
