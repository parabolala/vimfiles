set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Plugin 'vim-scripts/jpythonfold.vim'
Plugin 'vim-scripts/NERD_tree-Project'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'sjl/gundo.vim'
"Plugin 'michaeljsmith/vim-indent-object'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'msanders/snipmate.vim'
Plugin 'vim-scripts/Liquid-Carbon'
Plugin 'tmhedberg/matchit'
"Plugin 'robhudson/snipmate_for_django'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'godlygeek/tabular'
Plugin 'int3/vim-extradite'
Plugin 'teranex/vim-rooter'
Plugin 'kien/ctrlp.vim'
Plugin 'jdevera/vim-protobuf-syntax'
"Plugin 'bingaman/vim-sparkup'
""Plugin 'gregsexton/gitv'
"Plugin 'ervandew/supertab'
"Plugin 'jeetsukumaran/vim-buffergator'
"Plugin 'hallettj/jslint.vim'
Plugin 'majutsushi/tagbar'
Plugin 'ehamberg/vim-cute-python'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'vim-scripts/ScreenShot'
Plugin 'davidhalter/jedi-vim.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic.git'

" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
