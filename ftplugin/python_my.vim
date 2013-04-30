setlocal omnifunc=pythoncomplete#Complete

set shiftwidth=2

set complete=""
set complete+=.
set complete+=k
set complete+=b
set complete+=t
set completeopt+=menuone,longest,preview
setlocal keywordprg=pydoc

let g:SuperTabDefaultCompletionType = "context"

set tabstop=2


iabbrev coding # -*- coding: utf-8 -*-
abbrev pdb import ipdb;ipdb.set_trace()

call indent_guides#toggle()

let w:m2=matchadd('ErrorMsg','\%81v.*',-1)

augroup python_my
    autocmd!
    autocmd BufWritePre *.py :%s/\s\+$//e
augroup END

inoremap # X#
source ~/.vim/bundle/python_fold/syntax/jpythonfold.vim

set cinoptions=(0

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

