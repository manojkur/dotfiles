" File: .vimrc
" Auth: Manoj Kurapati
" Desc: Living document of my vim configuration

" Credit:
" Leela Pakanati https://github.com/LeelaPakanati/dotfiles/blob/master/.vimrc
" Doug Black https://github.com/dougblack/dotfiles/blob/master/.vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Initial Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader key is comma
let mapleader=","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
" Plugin 'scrooloose/syntastic'
" Plugin 'severin-lemaignan/vim-minimap'
" Plugin 'tmux-plugins/vim-tmux-focus-events'
" Plugin 'francoiscabrol/ranger.vim'
" Plugin 'lervag/vimtex'
" Plugin 'honza/vim-snippets'
" Plugin 'SirVer/ultisnips'
" Plugin 'KeitaNakamura/tex-conceal.vim'

call vundle#end()
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set Color Theme
colorscheme elflord 
let g:airline_theme='deus'
set laststatus=2
set encoding=utf-8
let g:airline_powerline_fonts = 1

" Enable syntax processing
syntax enable


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Number of visual spaces per TAB
set tabstop=4

" Number of spaces in tab when editing
set softtabstop=4

" Tabs are spaces
set expandtab


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show line numbers
set number

" Show command in bottom bar
set showcmd

" Highlight current line
set cursorline

" Visual autocomplete for command menu
set wildignorecase
set wildmode=longest:full
set wildmenu

" redraw the screen only when need to
" set lazyredraw

" highlight matching [{()}]
set showmatch

" Minimum number of lines above and below cursor
set scrolloff=15

" Enable autoindent
set autoindent

" Mouse support
set mouse=a
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search as characters are entered
set incsearch

" Higlight searches
set hlsearch

" Turn on/off search highlight
nnoremap <leader><space> :set hlsearch! is! hlsearch?<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable folding
set foldenable

" Open folds 10 levels deep on start
set foldlevelstart=10

" 10 nested fold max
set foldnestmax=10

" Space open/close folds
nnoremap <space> za

" Fold based on indent level
set foldmethod=indent


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move vertically by visual line is long line wraps around two lines
nnoremap j gj
nnoremap k gk

" Move to beginning/end of line. Controversial
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" Highlight last inserted text
nnoremap gV `[v`]


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader Shortcuts 
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap CAPS to ESC
" setxkbmap -option caps:escape

" Toggle gundo
" TODO: Install Gundo
" nnoremap <leader>u :GundoToggle<CR>

" Edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Save session
nnoremap <leader>s : mksession<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Relative Line Numbers
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatically switch between definite and relative line numbers
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


