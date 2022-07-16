call plug#begin(stdpath('data') . '/plugged')
  " UI 
  Plug 'junegunn/seoul256.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'ncm2/float-preview.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'hoob3rt/lualine.nvim'

  " General stuff
  Plug 'easymotion/vim-easymotion'
  Plug 'liuchengxu/vim-better-default'
  Plug 'jiangmiao/auto-pairs', { 'tag': 'v2.0.0' }
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-commentary'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-file-browser.nvim'

  " Language support
  Plug 'tpope/vim-dispatch'
  Plug 'radenling/vim-dispatch-neovim'

  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'deoplete-plugins/deoplete-jedi'

  "   Clojure
  Plug 'guns/vim-sexp'
  Plug 'tpope/vim-sexp-mappings-for-regular-people'
  Plug 'Olical/conjure'
  Plug 'clojure-vim/vim-jack-in'

  "   Emmet
  Plug 'mattn/emmet-vim'
call plug#end()

" General {{{
let mapleader = " "
let maplocalleader = ","
set scrolloff=6
" }}}

" UI {{{
let g:seoul256_background = 233
colo seoul256
" }}}

" Deoplete {{{
let g:deoplete#enable_at_startup = 1
set completeopt-=preview

let g:float_preview#docked = 0
let g:float_preview#max_width = 80
let g:float_preview#max_height = 40

  " Clojure
call deoplete#custom#option('keyword_patterns', {'clojure': '[\w!$%&*+/:<=>?@\^_~\-\.#]*'})

  " Python
let g:python3_host_prog = '/usr/bin/python3'
" }}}

" Easymotion {{{
let g:EasyMotion_do_mapping = 0 
let g:EasyMotion_smartcase = 1

nmap s <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" }}}

" Git fugitive {{{
map <leader>gs :G<CR>
map <leader>gl :diffget //3<CR>
map <leader>gh :diffget //2<CR>
" }}}

" Telescope mappings {{{
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
" }}}

" Emmet snippets {{{
let g:user_emmet_settings = {
\  'variables': {'lang': 'en'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}
" }}}
