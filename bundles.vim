" bundle
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'gmarik/vundle'

"--------------
" Color Schemes
"--------------
" Plugin 'altercation/vim-colors-solarized.git'
Plugin 'tomasr/molokai'
Plugin 'sjl/badwolf'
Plugin 'desert256.vim'
Plugin 'https://github.com/tomtom/tcomment_vim.git'
Plugin 'iCyMind/NeoSolarized'
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'fisadev/fisa-vim-colorscheme'
Bundle 'flazz/vim-colorschemes'
Bundle 'rakr/vim-one'
Plugin 'NLKNguyen/papercolor-theme'

" statusline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Bundle 'Lokaltog/vim-powerline'

" tagbar
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'Tagbar'
Plugin 'taglist.vim'
Plugin 'winmanager'
" Plugin 'bufexplorer.zip'
Plugin 'jlanzarotta/bufexplorer'
" Bundle 'fholgado/minibufexpl.vim'

" programming
Plugin 'davidhalter/jedi-vim'
Bundle 'https://github.com/chazy/cscope_maps.git'
Plugin 'OmniCppComplete'
Bundle 'fugitive.vim'
Bundle 'echofunc.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Bundle 'Yggdroot/indentLine'
" Plugin 'nathanaelkane/vim-indent-guides'
"let g:indentLine_fileType = ['c', 'cpp', 'h', 'hh', 'cc', 'python']
Bundle 'indentpython.vim'
Bundle 'Python-Syntax'
Bundle 'json.vim'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'https://github.com/rhysd/vim-clang-format.git'
Plugin 'airblade/vim-gitgutter'

" editing
Bundle 'genutils'
Bundle 'Mark'
Bundle 'Auto-Pairs'
Bundle 'ctrlp.vim'
Bundle 'ag.vim'
Plugin 'mileszs/ack.vim'
Plugin 'delimitMate.vim'
Bundle 'bronson/vim-trailing-whitespace'

" file operations
Bundle 'git://github.com/tpope/vim-eunuch.git'


" syntax check
Plugin 'pyflakes'
Plugin 'vim-flake8'
Bundle 'scrooloose/syntastic'
Bundle 'python-mode-klen'
Bundle 'phonzia/cppSyntaxCheck'

"------- FPs ------
Bundle 'kien/rainbow_parentheses.vim'
" Bundle 'wlangstroth/vim-racket'
" Bundle 'vim-scripts/VimClojure'
" Bundle 'rosstimson/scala-vim-support'

" git
Bundle 'tpope/vim-fugitive'

" markdown
Plugin 'morhetz/gruvbox'
Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdonw'
Plugin 'suan/vim-instant-Markdown'

" shell
Bundle 'lrvick/Conque-Shell'

" tab
Plugin 'tabpage.vim'

" function symbols
Plugin 'Yggdroot/LeaderF'

call vundle#end()

