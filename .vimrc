" ========= BASIC SETTINGS =========

execute pathogen#infect()


set mouse=a 
set nocompatible              " disable old-school vi compatibility
syntax on                    " enable syntax highlighting
filetype plugin indent on    " enable filetype detection and indentation
set number                   " show line numbers
set relativenumber           " relative line numbers
set tabstop=4                " tab size
set shiftwidth=4             " indentation size
set expandtab                " use spaces instead of tabs
set autoindent               " copy indent from current line
set smartindent              " smarter auto-indent
set backspace=indent,eol,start
set clipboard=unnamed        " use system clipboard
set cursorline               " highlight current line
set wildmenu                 " tab-completion menu
set showmatch                " highlight matching brackets
set incsearch                " search as you type
set hlsearch                 " highlight search results
set scrolloff=5              " keep 5 lines visible around cursor
set nowrap                   " don't wrap lines
set encoding=utf-8
set wrap 
" ========= COLORS =========
"colorscheme torte           " built-in Vim colorscheme (change if desired)
set background=dark
colorscheme gruvbox 

" ========= AUTOCOMPLETE =========
set completeopt=menuone,noselect
set omnifunc=syntaxcomplete#Complete
inoremap <C-Space> <C-x><C-o>  " ctrl-space to trigger completion

" ========= PYTHON-SPECIFIC =========
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType python setlocal colorcolumn=79

" ========= FILE EXPLORER =========
nnoremap <Leader>e :Ex<CR>   " open file explorer with <Leader>e

" ========= STATUS LINE =========
set laststatus=2             " always show status line
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [%{&fileencoding}]\ [line:%l/%L,col:%c]
autocmd VimEnter * set colorcolumn=
highlight ColorColumn ctermbg=NONE guibg=NONE
" ========= KEYMAPS =========
let mapleader=","            " leader key
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>h :nohlsearch<CR>



" ========= PLUGINS (OPTIONAL, VUNDLE LIGHT) =========
" To enable plugins later, use Pathogen.

"VimWiki 
let g:vimwiki_list = [{
\ 'path': '~/vimwiki/',
\ 'syntax': 'markdown',
\ 'ext': '.md'}]
nmap <Leader>wt <Plug>VimwikiToggleListItem
" Enable Pathogen
execute pathogen#infect()

" Enable YCM
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

" Enable file type plugins
filetype plugin indent on

" Enable auto-indentation
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Enable line numbering
set number

" Enable syntax highlighting
syntax enable

" my file xplorer 
nnoremap <C-z> :NERDTreeToggle<CR> 
nnoremap <C-p> :w<CR>:!python3 %<CR> 
" this runs pyhton3 in a shell , shows output and then returns to vim 

"==================== VIM STARTIFY.config========================

nnoremap <C-s> :Startify<CR>
let g:startify_bookmarks = [
  \ { 'c': '~/.vimrc' },
  \ { 'b': '~/.bashrc' },
  \ { 'm': '~/mission_lok'},
  \ { 'n': '~/Downloads/nand2tetris' },
  \{'j': '~/javaAPP'},
  \]

let g:startify_lists = [
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks'] },
  \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
  \ { 'type': 'files',     'header': ['   Recent Files'] },
  \ { 'type': 'sessions',  'header': ['   Sessions'] },
\ ]



"ASCII art header
let g:startify_custom_header = [
  \ '   ╻ ╻╻┏┳┓ free palestine',
  \ '   ┃┏┛┃┃┃┃ may this code destrtoy the destroyers ',
  \ '   ┗┛ ╹╹ ╹ desaad versions v0 , project anarkey  ',
  \ '-----------NO_ROLLBACK , construction of a cybergod ',
  \ ]

let g:startify_center = 1


