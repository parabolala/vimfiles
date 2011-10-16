setlocal omnifunc=pythoncomplete#Complete

set complete=""
set complete+=.
set complete+=k
set complete+=b
set complete+=t
set completeopt+=menuone,longest,preview
setlocal keywordprg=pydoc

let g:SuperTabDefaultCompletionType = "context"


let ropevim_vim_completion=1

iabbrev coding # -*- coding: utf-8 -*-
abbrev pdb import ipdb;ipdb.set_trace()

call indent_guides#toggle()

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

" Use F6/Shift-F6 to add/remove a breakpoint (pdb.set_trace)
" Totally cool.
python << EOF
def SetBreakpoint():
    import re
    nLine = int(vim.eval( 'line(".")'))

    strLine = vim.current.line
    strWhite = re.search( '^(\s*)', strLine).group(1)

    vim.current.buffer.append(
       "%(space)svimpdb.set_trace() %(mark)s Breakpoint %(mark)s" %
         {'space':strWhite, 'mark': '#' * 30}, nLine - 1)

    for strLine in vim.current.buffer:
        if strLine == "import vimpdb":
            break
    else:
        vim.current.buffer.append( 'import vimpdb', 0)
        vim.command( 'normal j1')

vim.command('map <f6> :py SetBreakpoint()<cr>')

def RemoveBreakpoints():
    import re

    nCurrentLine = int(vim.eval('line(".")'))

    nLines = []
    nLine = 1
    for strLine in vim.current.buffer:
        if strLine == "import vimpdb" or strLine.lstrip()[:16] == "vimpdb.set_trace()":
            nLines.append( nLine)
        nLine += 1

    nLines.reverse()

    for nLine in nLines:
        vim.command("normal %dG" % nLine)
        vim.command("normal dd")
        if nLine < nCurrentLine:
            nCurrentLine -= 1

    vim.command( "normal %dG" % nCurrentLine)

vim.command( "map <s-f6> :py RemoveBreakpoints()<cr>")
EOF

set cinoptions=(0

let ropevim_vim_completion=1
let ropevim_extended_complete=1

function! TabWrapperRope()
if strpart(getline('.'), 0, col('.')-1) =~ '^\s*$'
return "\"
else
return "\<C-R>=RopeCodeAssistInsertMode()\"
endif
endfunction

silent imap <C-Space>=TabWrapperRope()
map <F2> :call RopeGotoDefinition


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

