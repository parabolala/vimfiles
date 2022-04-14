setlocal omnifunc=pythoncomplete#Complete

setlocal shiftwidth=2

setlocal complete=""
setlocal complete+=.
setlocal complete+=k
setlocal complete+=b
setlocal complete+=t
setlocal completeopt+=menuone,longest,preview
setlocal keywordprg=pydoc
setlocal colorcolumn=80

let g:SuperTabDefaultCompletionType = "context"

setlocal tabstop=2

inoreabbrev coding # -*- coding: utf-8 -*-
inoreabbrev ipdb import ipdb;ipdb.set_trace()
inoreabbrev pdb import pdb;pdb.set_trace()

call indent_guides#toggle()

let w:m2=matchadd('ErrorMsg','\%81v.*',-1)

inoremap # X#
"source ~/.vim/bundle/jpythonfold.vim/syntax/jpythonfold.vim

set cinoptions=(0

" Add the virtualenv's site-packages to vim path
py3 << EOF
import os.path
import sys
import vim
#if 'VIRTUAL_ENV' in os.environ:
#    project_base_dir = os.environ['VIRTUAL_ENV']
#    sys.path.insert(0, project_base_dir)
#    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
#    exec(open(activate_this).read(), dict(__file__=activate_this))
EOF
