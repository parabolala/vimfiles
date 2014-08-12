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
Bundle 'vim-scripts/jpythonfold.vim'
Bundle 'vim-scripts/NERD_tree-Project'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'sjl/gundo.vim'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'msanders/snipmate.vim'
Bundle 'vim-scripts/Liquid-Carbon'
Bundle 'edsono/vim-matchit'
Bundle 'robhudson/snipmate_for_django'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'godlygeek/tabular'
Bundle 'int3/vim-extradite'
Bundle 'teranex/vim-rooter'
Bundle 'kevinw/pyflakes-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'jdevera/vim-protobuf-syntax'
Bundle 'bingaman/vim-sparkup'
Bundle 'gregsexton/gitv'
Bundle 'ervandew/supertab'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'hallettj/jslint.vim'
Bundle 'majutsushi/tagbar'
Bundle 'ehamberg/vim-cute-python'
Bundle 'Valloric/YouCompleteMe'
Bundle 'jnwhiteh/vim-golang'
Bundle 'FelikZ/ctrlp-py-matcher'
Bundle "nsf/gocode", {'rtp': 'vim/'}
Bundle "vim-scripts/ScreenShot"
Bundle "davidhalter/jedi-vim.git"

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
