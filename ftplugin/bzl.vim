function! FormatBZL(buffer) abort
    return {
    \   'command': 'buildifier'
    \}
endfunction

execute ale#fix#registry#Add('buildifier', 'FormatBZL', ['bzl'], 'Buildifier for bzl')
