setlocal omnifunc=pythoncomplete#Complete

set complete=""
set complete+=.
set complete+=k
set complete+=b
set complete+=t
set completeopt-=preview
set completeopt+=longest
setlocal keywordprg=pydoc

let ropevim_vim_completion=1

iabbrev coding # -*- coding: utf-8 -*-
abbrev pdb import ipdb;ipdb.set_trace()

function! TabWrapperRope()
  if strpart(getline('.'), 0, col('.')-1) =~ '^\s*$'
    return "\<Tab>"
  else
    return "\<C-R>=RopeCodeAssistInsertMode()\<CR>"
  endif
endfunction

" ropevim
"source /usr/src/ropevim/ropevim.vim

let w:m2=matchadd('ErrorMsg','\%81v.*',-1)

"imap <Tab> <C-R>=TabWrapperRope()<CR>

"python << EOF
"import os
"import sys
"import vim
"for p in sys.path:
"	if os.path.isdir(p):
"			vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
"EOF

"source /Users/xa4a/.vim/scripts/pycheck.vim

autocmd BufWritePre *.py :%s/\s\+$//e

inoremap # X#
source ~/.vim/bundle/python_fold/syntax/jpythonfold.vim
