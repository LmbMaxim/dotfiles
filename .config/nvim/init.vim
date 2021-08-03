call plug#begin(stdpath('data') . '/plugged')
  Plug 'tpope/vim-surround'
  Plug 'ryanoasis/vim-devicons'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'sansyrox/vim-python-virtualenv'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'tweekmonster/django-plus.vim'
  Plug 'honza/vim-snippets'

call plug#end()

"general settings
set completeopt-=preview
set equalalways
set background=light
colorscheme PaperColor
set path+=**
set number
set signcolumn=number
let mapleader = ","
let g:python3_host_prog='/usr/bin/python3'
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#formatter = 'jsformatter'

nnoremap <Leader>q :wqa<CR>
inoremap <Tab> <c-x><c-o>
nnoremap <Leader>v <c-w>v 
nnoremap <Leader>c <c-w>c
nnoremap <Leader>s <c-w>s
nnoremap <Leader>t :tabe<CR>
nnoremap <c-l> <c-w>l 
nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h
nnoremap <c-k> <c-w>k

"netrw config 
let g:netrw_altv = 1 
let g:netrw_winsize = 30
let g:netrw_banner = 0
let g:netrw_liststyle = 3
" autocmd VimEnter * Lex | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'Lex' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
nnoremap <Leader>dd :Lexplore %:p:h<CR>
nnoremap <Leader>da :Lexplore<CR>

"treesitter config
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    }
}
EOF

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>

