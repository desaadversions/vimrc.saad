
execute pathogen#infect()


set mouse=a 
set nocompatible            
syntax on                     
filetype plugin indent on     
set number                    
set relativenumber           
set tabstop=4                 
set shiftwidth=4              
set expandtab                 
set autoindent                
set smartindent               
set backspace=indent,eol,start
set clipboard=unnamed         
set cursorline                
set wildmenu                  
set showmatch                 
set incsearch                 
set hlsearch                  
set scrolloff=5               
set nowrap                    
set encoding=utf-8
set wrap 

"colorscheme torte           
set background=dark
colorscheme gruvbox 

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



"VimWiki 
let g:vimwiki_list = [{
\ 'path': '~/vimwiki/',
\ 'syntax': 'markdown',
\ 'ext': '.md'}]
nmap <Leader>wt <Plug>VimwikiToggleListItem
" Enable Pathogen
execute pathogen#infect()

" Enable YCM for autocompletion babyyy
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

" my sexxxxyyy file xplorer
nnoremap <C-z> :NERDTreeToggle<CR> 
nnoremap <C-p> :w<CR>:!python3 %<CR> 
" this runs pyhton3 in a shell , shows output and then returns to vim 

"==================== VIM STARTIFY.config babyyyy========================

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


