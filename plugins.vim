set nocompatible               " be iMproved
filetype off                   " required!

call plug#begin('~/.vim/plugged')


" My Bundles here:
"
" original repos on github
Plug 'vim-scripts/NERD_tree-Project'
Plug 'vim-scripts/The-NERD-tree'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'msanders/snipmate.vim'
Plug 'vim-scripts/Liquid-Carbon'
Plug 'tmhedberg/matchit'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'godlygeek/tabular'
Plug 'teranex/vim-rooter'
Plug 'kien/ctrlp.vim'
Plug 'jdevera/vim-protobuf-syntax'
Plug 'majutsushi/tagbar'

function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

Plug 'fatih/vim-go'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'nsf/gocode', {'rtp': 'vim/'}
Plug 'vim-scripts/ScreenShot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Python
Plug 'vim-scripts/jpythonfold.vim'
Plug 'ehamberg/vim-cute-python'

call plug#end()

filetype plugin indent on     " required!
