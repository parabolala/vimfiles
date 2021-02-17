function! FormatJSONNet(buffer) abort
    return {
    \   'command': 'jsonnetfmt --string-style l'
    \}
endfunction

execute ale#fix#registry#Add('jsonnetfmt', 'FormatJSONNet', ['jsonnet'], 'JSONNetFmt')

let g:ale_fixers = {
\ 	'jsonnet': [
\		'jsonnetfmt',
\	],
\}

set expandtab
set shiftwidth=2
set tabstop=2
