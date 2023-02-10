" $XDG_CONFIG_HOME/vim/vimrc
"
" This file contains configuration for vim. It is imported byneovim's config
" at $XDG_CONFIG_HOME/nvim/init.vim
"
" environment
set runtimepath^=$XDG_CONFIG_HOME/vim
set runtimepath+=$XDG_DATA_HOME/vim
set runtimepath+=$XDG_CONFIG_HOME/vim/after

set packpath^=$XDG_DATA_HOME/vim,$XDG_CONFIG_HOME/vim
set packpath+=$XDG_CONFIG_HOME/vim/after,$XDG_DATA_HOME/vim/after

let g:netrw_home = $XDG_DATA_HOME."/vim"
call mkdir($XDG_DATA_HOME."/vim/spell", 'p')

set backupdir=$XDG_STATE_HOME/vim/backup | call mkdir(&backupdir, 'p')
set directory=$XDG_STATE_HOME/vim/swap   | call mkdir(&directory, 'p')
set undodir=$XDG_STATE_HOME/vim/undo     | call mkdir(&undodir,   'p')
set viewdir=$XDG_STATE_HOME/vim/view     | call mkdir(&viewdir,   'p')

if !has('nvim') | set viminfofile=$XDG_STATE_HOME/vim/viminfo | endif

" begin vundle
set nocompatible
filetype off

set rtp+=$XDG_DATA_HOME/vim/bundle/Vundle.vim
call vundle#begin($XDG_DATA_HOME.'/vim/bundle')

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
set laststatus=2
let g:airline_theme='solarized'

Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']

Plugin 'rking/ag.vim'
Plugin 'tpope/vim-fugitive' " git

Plugin 'sebdah/vim-delve'       " go debugger
Plugin 'fatih/vim-go'           " go
let g:go_fmt_experimental = 1   " prevent gofmt from destroying folds

call vundle#end()
filetype plugin indent on
" end vundle

" store vim files centrally
set undofile            " persistent undo history
set backup

" system compatibility
set mouse=a             " enable full mouse support
set clipboard^=unnamed  " use system clipboard
set t_Co=16

" theme
set background=dark

" shortcuts
let mapleader = "\<Space>"

" general
syntax on
set encoding=utf-8
"set hidden              " allow multiple files open in same window
set number              " show line number
set showcmd             " show command as typing

" search
set ignorecase          " ignore case when searching and substituting
set smartcase           " acknowledge case when upper
set incsearch           " search incrementally
set hlsearch            " highlight all search terms
nnoremap <leader>/ :noh<cr>

" folds
set foldmethod=syntax                   " fold based on file's syntax
set foldlevelstart=99                   " default to nothing folded
" autocmd BufWinLeave *.* mkview          " save folds et al when loading
" autocmd BufWinEnter *.* silent loadview " load folds et al when opening

" caused problem with arrow keys in insert mode, solved with "nocompatible"
"set noesckeys
set nocompatible

" mark 80 char
set colorcolumn=81
highlight ColorColumn ctermbg=9 ctermfg=7

" highlight whitespace
set list
set listchars=tab:→\ ,eol:¬

" tabs/spaces
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" filetype specific
autocmd FileType c setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType go setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType scheme setlocal expandtab shiftwidth=2 softtabstop=2

autocmd FileType cpp setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType php setlocal expandtab shiftwidth=4 softtabstop=4

autocmd FileType html setlocal expandtab
autocmd FileType css setlocal expandtab
autocmd FileType javascript setlocal expandtab

autocmd FileType yaml setlocal expandtab

" Set up a way to toggle between relative and absolute line numbering
function! NumberToggle()
    if (&relativenumber)
        set norelativenumber
    else
        set relativenumber
    endif
endfunc

nnoremap <leader>n :call NumberToggle()<cr>
nnoremap <C-w>" :split<cr>
nnoremap <C-w>% :vsplit<cr>