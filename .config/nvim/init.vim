call plug#begin(stdpath('data') . '/plugged')
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'sansyrox/vim-python-virtualenv'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'tweekmonster/django-plus.vim'
  Plug 'honza/vim-snippets'
call plug#end()


autocmd CursorHold * silent call CocActionAsync('highlight')
" set termguicolors

"general settings
set laststatus=2
set completeopt-=preview
set equalalways
set path+=**
set number
set signcolumn=number
let g:Hexokinase_highlighters = [ 'signcolumn' ]
let mapleader = ","
let g:python3_host_prog='/usr/bin/python3'
set guicursor=

set background=dark

set fillchars+=vert:¦
set fillchars+=stl:_
set fillchars+=stlnc:_

" for no gui
 highlight Normal ctermbg=none 
 highlight ColorColumn ctermbg=15
 highlight StatusLine cterm=bold guibg=none
 highlight StatusLineNC cterm=bold
 highlight VertSplit cterm=none
 highlight NonText ctermbg=none
 highlight CursorLine ctermbg=none 
 highlight CursorColumn ctermbg=none
 highlight LineNr ctermbg=none
 highlight NormalFloat ctermbg=0 cterm=bold
 highlight Pmenu ctermbg=0 ctermfg=none cterm=none
 highlight PmenuSel ctermbg=0 ctermfg=7 cterm=bold
 highlight PmenuThumb ctermbg=none
 highlight PmenuSbar ctermbg=none
 highlight QuickFixLine ctermbg=none
 highlight Visual ctermbg=0


 " for gui
"   highlight Normal ctermbg=none guibg=none
"   highlight ColorColumn ctermbg=15 guibg=15
"   highlight StatusLine cterm=bold gui=bold
"   highlight StatusLineNC cterm=bold gui=bold
"   highlight VertSplit cterm=none gui=bold
"   highlight NonText ctermbg=none guibg=none
"   highlight CursorLine ctermbg=none guibg=none
"   highlight CursorColumn ctermbg=none guibg=none
"   highlight LineNr ctermbg=none guibg=none
"   highlight NormalFloat ctermbg=0 ctermbg=0
"   highlight Pmenu ctermbg=0  ctermfg=7 cterm=bold  guibg=0 guifg=7 gui=bold
"   highlight PmenuSel ctermbg=7* guibg=7* cterm=bold gui=bold
"   highlight PmenuThumb ctermbg=none guibg=none
"   highlight PmenuSbar ctermbg=none guibg=none
"   highlight QuickFixLine ctermbg=none guibg=none
"   highlight Visual ctermbg=0 guibg=0


nnoremap <leader>ff <cmd>Telescope find_files<cr>
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
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'Lex' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
nnoremap <Leader>da :Lexplore<CR>


"treesitter config
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
    }
}
EOF

