let no_plugin_maps=1
call pathogen#runtime_append_all_bundles()

syntax on
set magic
set ignorecase
set smartcase
set incsearch
set tabstop=4
set autoindent
set smartindent
set number
set nowrap
set nocompatible
set ruler
set expandtab
set shiftwidth=4
set wildmenu

filetype plugin indent on
autocmd FileType xhtml,html,htmldjango setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType r setlocal tabstop=2 shiftwidth=2 expandtab

source ~/.vim/cyr_keys.vim

"set t_Co=256
"colorscheme 256_adaryn
colorscheme desert
hi Normal  ctermbg=17

set cursorline
"22 for nice green line
hi CursorLine ctermbg=235 cterm=none

hi Pmenu ctermbg=239

imap <F2> <Esc>:w<cr>a
map <C-s> <Esc>:w<CR>

map <F7> <Esc>:NERDTreeToggle<cr>


let mapleader = ","
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

" extended % matching for HTML, LaTeX, and many other languages 
runtime macros/matchit.vim

set title
set scrolloff=3
set nobackup
set noswapfile


set backspace=indent,eol,start
set hlsearch
nmap <silent> <leader>n :silent :set hlsearch!<CR>

"set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>
" ease of use keyboard mappings (why do I care about top/bottom of screen?)
map H ^
map L $

map <Right> :bnext<CR>
map <Left> :bprev<CR>
map <Del> :bd<CR>

set showcmd

autocmd FileType tex,plaintex setlocal wrap shiftwidth=2 spell spelllang=uk
autocmd FileType tex TTarget pdf
autocmd FileType tex let g:Tex_CompileRule_pdf='scons -I '
autocmd FileType tex let g:Tex_ViewRule_pdf='open $*.pdf &'
let g:Tex_IgnoredWarnings =
            \"Underfull\n".
            \"Overfull\n".
            \"specifier changed to\n".
            \"You have requested\n".
            \"Missing number, treated as zero.\n".
            \"There were undefined references\n".
            \"Citation %.%# undefined\n".
            \'LaTeX Font Warning:'"
" This number N says that latex-suite should ignore the first N of the above.
let g:Tex_IgnoreLevel = 8
au BufRead,BufNewFile *.tex setfiletype tex



" remember cursor position
set viewoptions=cursor,folds

inoremap kj <Esc>

set mouse=a

set undofile
set undodir=~/.undo

au FileType python set colorcolumn=80
hi ColorColumn guibg=#5d5d5d

map <D-ё> :maca _cycleWindows:<CR>

nnoremap ; :
au FocusLost * :wa

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nmap <leader>a :Ack 

nnoremap <F5> :GundoToggle<CR>

set wildignore=*.pyc,*.class,*.obj,*.o,.git
let g:CommandTMaxHeight=5

set guioptions-=T

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

