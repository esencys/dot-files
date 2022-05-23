call plug#begin(stdpath('data') . '/plugged')
  Plug 'liuchengxu/vim-better-default'

  Plug 'easymotion/vim-easymotion'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'ncm2/float-preview.nvim'
  Plug 'jiangmiao/auto-pairs', { 'tag': 'v2.0.0' }

  Plug 'guns/vim-sexp'
  Plug 'tpope/vim-sexp-mappings-for-regular-people'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-commentary'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'hoob3rt/lualine.nvim'
  Plug 'nvim-telescope/telescope-file-browser.nvim'

  Plug 'Olical/conjure'
  Plug 'clojure-vim/vim-jack-in'
  Plug 'tpope/vim-dispatch'
  Plug 'radenling/vim-dispatch-neovim'

call plug#end()


let mapleader = " "
let maplocalleader = ","
set scrolloff=6

colorscheme codedark

" Clojure {{{
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('keyword_patterns', {'clojure': '[\w!$%&*+/:<=>?@\^_~\-\.#]*'})
set completeopt-=preview

let g:float_preview#docked = 0
let g:float_preview#max_width = 80
let g:float_preview#max_height = 40
" }}}

" Easymotion {{{
let g:EasyMotion_do_mapping = 0 
" Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" }}}

" {{{
map <leader>gs :G<CR>
map <leader>gl :diffget //3<CR>
map <leader>gh :diffget //2<CR>
" }}}

