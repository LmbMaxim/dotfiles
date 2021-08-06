call plug#begin(stdpath('data') . '/plugged')
  Plug 'tpope/vim-surround'
  Plug 'ryanoasis/vim-devicons'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'sansyrox/vim-python-virtualenv'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'tweekmonster/django-plus.vim'
  Plug 'honza/vim-snippets'
  Plug 'gko/vim-coloresque'
call plug#end()


"general settings
set completeopt-=preview
set equalalways
set path+=**
set number
set signcolumn=number
let g:Hexokinase_highlighters = [ 'signcolumn' ]
let mapleader = ","
let g:python3_host_prog='/usr/bin/python3'
set guicursor=

set fillchars+=vert:¦
set fillchars+=stl:_
set fillchars+=stlnc:_

highlight ColorColumn ctermbg=none
highlight VertSplit cterm=NONE
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight CursorLine ctermbg=none
highlight LineNr ctermbg=none
highlight Pmenu ctermbg=none
highlight PmenuSel ctermbg=0
highlight StatusLine cterm=none
highlight StatusLineNC cterm=none
highlight Visual ctermbg=0
set laststatus=2
"set wildoptions=pum
"set pumblend=10
"set winblend=10


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
    enable = true
    }
}
EOF


" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>


