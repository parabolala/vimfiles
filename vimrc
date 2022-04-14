set pythonthreedll=/opt/local/Library/Frameworks/Python.framework/Versions/3.8/Python
py3 pass

source ~/.vim/plugins.vim

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
set wildmenu
set wrapscan
set splitright
set splitbelow
set autoread

filetype plugin indent on
augroup vimrc_main
    autocmd!
    autocmd FileType xhtml,html,htmldjango setlocal tabstop=2 shiftwidth=2 expandtab
    autocmd FileType r setlocal tabstop=2 shiftwidth=2 expandtab

    autocmd FileType plaintex setlocal wrap shiftwidth=2 spell spelllang=uk

    autocmd BufEnter * :Rooter

    " When vimrc is edited, reload it
    autocmd bufwritepost .vimrc source ~/.vimrc
    autocmd bufwritepost plugins.vim source ~/.vim/plugins.vim

    autocmd FocusLost * :wa

    autocmd BufWritePre *.py :%s/\s\+$//e
    autocmd BufWritePre *.md :%s/\s\+$//e
augroup END

source ~/.vim/cyr_keys.vim

colorscheme liquidcarbon
hi Normal ctermbg=17

set cursorline
"22 for nice green line
hi CursorLine ctermbg=235 cterm=none

highlight Pmenu ctermbg=239



let mapleader = ","

" Fast editing of the .vimrc
nnoremap <leader>e :e! $MYVIMRC<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

set title
set scrolloff=3
set nobackup
set noswapfile

set backspace=indent,eol,start
set hlsearch
noremap <silent> <leader>n :silent :set hlsearch!<CR>

set listchars=tab:>-,trail:·,eol:$
nnoremap <silent> <leader>s :set nolist!<CR>
" ease of use keyboard mappings (why do I care about top/bottom of screen?)
noremap H ^
noremap L $

set showcmd

" remember cursor position
set viewoptions=cursor,folds

inoremap kj <Esc>

set mouse=a

set undofile
" Note: this directory has to be created manually.
set undodir=~/.undo

highlight ColorColumn guibg=#5d5d5d

map <D-`> :maca _cycleWindows:<CR>
map <D-ё> :maca _cycleWindows:<CR>

nnoremap ; :

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>a :Ack

set wildignore=*.pyc,*.class,*.obj,*.o,.git,.hg,.svn,.ropeproject

set guioptions-=T

" When pressing <leader>cd switch to the directory of the open buffer
"map <leader>cd :cd %:p:h<cr>

" Use space to open/close folds
nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>

set foldlevel=3

highlight StatusLine ctermfg=black ctermbg=green cterm=NONE
highlight StatusLineNC ctermfg=black ctermbg=lightblue cterm=NONE

noremap w!! w !sudo tee % >/dev/null

" Easier bracket matching {{{
nnoremap <Tab> %
" }}}

" Repurpose arrow keys to move lines {{{
" Inspired by http://jeetworks.com/node/89

" Arrow key remapping: {{{
" Left/Right = indent/unindent
function! SetArrowKeysAsTextShifters()
    " Normal mode
    nnoremap <silent> <Left>   <<
    nnoremap <silent> <Right>  >>
    "nnoremap <silent> <Up>     <Esc>:call <SID>MoveLineUp()<CR>
    "nnoremap <silent> <Down>   <Esc>:call <SID>MoveLineDown()<CR>

    " Visual mode
    vnoremap <silent> <Left>   <gv
    vnoremap <silent> <Right>  >gv
    "vnoremap <silent> <S-Up>   <Esc>:call <SID>MoveVisualUp()<CR>
    "vnoremap <silent> <S-Down> <Esc>:call <SID>MoveVisualDown()<CR>

    " Insert mode
    "inoremap <silent> <Left>   <C-D>
    "inoremap <silent> <Right>  <C-T>
    "inoremap <silent> <Up>     <C-O>:call <SID>MoveLineUp()<CR>
    "inoremap <silent> <Down>   <C-O>:call <SID>MoveLineDown()<CR>
endfunction

call SetArrowKeysAsTextShifters()
" }}}

nnoremap <F5> :GundoToggle<CR>
nnoremap <F7> <Esc>:NERDTreeToggle<cr>
nnoremap <F8> :TagbarToggle<CR>

let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0

let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Split string (opposite of J).
nnoremap K a<cr><esc>k$

" PyMatcher for CtrlP
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" Set delay to prevent extra search
let g:ctrlp_lazy_update = 350

" Do not clear filenames cache, to improve CtrlP startup
" You can manualy clear it by <F5>
let g:ctrlp_clear_cache_on_exit = 0

" Set no file limit, we are building a big project
let g:ctrlp_max_files = 0

" If ag is available use it as filename list generator instead of 'find'
if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --hidden -g ""'
endif

if filereadable($HOME . "/.vim/local.vim")
  source ~/.vim/local.vim
endif

set nolist

set laststatus=2
let g:airline_theme='kalisi'
"let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:ale_linters = { 'go': ['gometalinter', 'gofmt', 'goimport'] }
let g:ale_fixers = {
\   'go': [
\       'goimports',
\       'gofmt',
\   ],
\	'typescript': [
\		'prettier',
\	],
\   'javascript': [
\       'prettier',
\   ],
\	'typescriptreact': [
\		'prettier',
\	],
\ 	'proto': [
\		'trim_whitespace',
\       'protolint',
\	],
\ 	'bzl': [
\		'buildifier',
\	],
\ 	'sh': [
\		'shfmt',
\	],
\	'python': [
\		'black',
\	],
\	'html': [
\   'prettier',
\   ],
\}

set colorcolumn=80

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

augroup TypeJavaScriptLint
	au!
	au FileType typescript let g:ale_linters =
				\{
				\'typescript': ['prettier', 'tsserver']
				\}

	au FileType typescriptreact let g:ale_linters =
				\{
				\'typescriptreact': ['prettier', 'tsserver']
				\}

	au FileType javascript let g:ale_linters =
				\{
				\'javascript': ['prettier', 'eslint']
				\}
	au FileType javascriptreact let g:ale_linters =
				\{
				\'javascriptreact': ['prettier']
				\}
	au FileType go let g:ale_linters =
				\{
				\'go': ['golint']
				\}
	au FileType proto set expandtab
augroup END

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
let g:go_highlight_types = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1 
let g:go_highlight_extra_types = 1

let g:jsonnet_fmt_options = "--string-style l"

