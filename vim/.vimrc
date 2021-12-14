" Esen C
" general settings {{{
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set nocompatible
set cmdheight=2
set updatetime=300
set shortmess+=c
set mouse=a
set scrolloff=6

" - Save some LH typing
inoremap jk <Esc>
" }}}
" Colors {{{
colorscheme codedark
syntax enable
" }}}
" Searching {{{
set path+=**
set incsearch
set hlsearch
set ignorecase
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Spaces & Tabs {{{
set tabstop=2
set softtabstop=2
set expandtab
filetype indent on
filetype on
" }}}
" Leader Shortcuts {{{
let mapleader=" "

" - Save buffer
nnoremap <leader>w :w<CR>

" - Close buffer
nnoremap <leader>D :bd<CR>

" - Cycle through buffers
nnoremap <leader>j :bn<CR>
nnoremap <leader>k :bp<CR>

" }}}
" UI Layout {{{
set number
set relativenumber
set cursorline
set wildmenu
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
" }}}
" Folding {{{
set foldmethod=indent
set nofoldenable
set foldnestmax=10
set foldlevel=0
set foldminlines=0

nnoremap zh zm
nnoremap zl zr
" }}}
" AutoGroups {{{
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd FileType javascript setlocal commentstring=//\ %s
    autocmd FileType javascript setlocal tabstop=2
    autocmd FileType javascript setlocal softtabstop=2
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd FileType elm setlocal softtabstop=4 shiftwidth=4 expandtab
    autocmd BufEnter *.py setlocal tabstop=4
augroup END
" }}}
" VIMSCRIPT {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType vim setlocal foldlevel=0
augroup END
" }}}
" Plug Vim auto install and patching {{{
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" }}}
" Emmet {{{
let g:user_emmet_mode='a'

let g:user_emmet_install_global = 0
autocmd FileType html,css,vue,javascript EmmetInstall

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
\              ."\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."\t<link rel=\"stylesheet\" href\"style.css\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}
" }}}
" Elm {{{
let g:elm_format_autosave = 1
let maplocalleader="."
" }}}
" Fugitive {{{
nmap <leader>gs :G<CR>
nmap <leader>gl :diffget //3<CR>
nmap <leader>gh :diffget //2<CR>
" }}}
" Polyglot {{{
let g:polyglot_disabled = ['elm']
" }}}
" Prettier {{{
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" }}}
" Plug installs {{{
call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'elmcast/elm-vim'
Plug 'andys8/vim-elm-syntax', {'for': 'elm'}
Plug 'vim-airline/vim-airline'
call plug#end()
" }}}
"

