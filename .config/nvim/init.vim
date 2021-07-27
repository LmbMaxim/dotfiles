

call plug#begin(stdpath('data') . '/plugged')

  Plug 'neovim/nvim-lspconfig'
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-surround'
  Plug 'ryanoasis/vim-devicons'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'sansyrox/vim-python-virtualenv'
  " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

"startup section---
autocmd VimEnter * Lex | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'Lex' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

nnoremap <S-t> gt
nnoremap <S-t> gT
:imap jj <Esc>


:command Reload source $MYVIMRC
let g:python3_host_prog='/usr/bin/python3'
let g:airline_theme='papercolor'

"netrw section---
let g:netrw_winsize = 30
let g:netrw_banner = 0



